import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:openapi/openapi.dart';  // This now includes our enhanced APIs
import 'package:flutter_e_mentor/main.dart';
import 'package:flutter_e_mentor/api/api_client.dart';
import 'package:go_router/go_router.dart';
import '../widgets/quiz_stats_overall_card.dart';
import '../widgets/student_stats_questions_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  StudentStatsDTO? _dashboardStats;
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _fetchDashboardStats();
  }

  Future<void> _fetchDashboardStats() async {
    try {
      setState(() {
        _isLoading = true;
        _error = null;
      });
      
      // Use our enhanced API with the proper serializers
      try {
        final quizzesApi = QuizzesControllerApi(ApiClient.dio, standardSerializers);
        final stats = await quizzesApi.getDashboardStats();
        
        setState(() {
          _dashboardStats = stats.data;
          _isLoading = false;
        });
        return;
      } catch (directError) {
        print('Direct API call failed: $directError');
      }
      
      // If we get here, we failed to parse the response
      setState(() {
        _error = "Couldn't parse the dashboard data";
        _isLoading = false;
      });
    } catch (e, stack) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
      print('Error fetching dashboard stats: $e');
      print(stack);
    }
  }

  String? _getUserNameFromIdToken(String? idToken) {
    if (idToken == null) return null;
    try {
      final parts = idToken.split('.');
      if (parts.length != 3) return null;
      final payload = json.decode(utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))));
      return payload['name'] ?? payload['preferred_username'] ?? payload['given_name'] ?? payload['sub'];
    } catch (_) {
      return null;
    }
  }

  Future<void> _disconnect() async {
    // Remove stored tokens
    await secureStorage.delete(key: 'access_token');
    await secureStorage.delete(key: 'id_token');
    await secureStorage.delete(key: 'refresh_token');
    // Clear user profile and API bearer token
    Provider.of<UserProfile>(context, listen: false).clear();
    ApiClient.setBearerToken(null);
    // Navigate to sign-in page
    context.go('/sign-in');
  }

  // Add confirmation popup method
  void _showDisconnectConfirmation() {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext dialogContext) => CupertinoAlertDialog(
        title: const Text('Confirmare deconectare'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Sigur vrei să te deconectezi?'),
            const SizedBox(height: 16),
            CupertinoButton.filled(
              color: CupertinoColors.systemRed,
              child: const Text('Deconectare', style: TextStyle(color: CupertinoColors.white)),
              onPressed: () async {
                Navigator.of(dialogContext).pop();
                await _disconnect();
              },
            ),
          ],
        ),
        actions: [
          CupertinoDialogAction(
            child: const Text('Anulare'),
            onPressed: () => Navigator.of(dialogContext).pop(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final userProfile = Provider.of<UserProfile>(context);
    final userName = _getUserNameFromIdToken(userProfile.idToken) ?? 'Utilizator';
    final theme = CupertinoTheme.of(context);
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      child: SafeArea(
        // Wrap content in a Stack to position floating button
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _BigCard(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bună,', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: CupertinoTheme.of(context).primaryColor)),
                          const SizedBox(height: 8),
                          Text(userName, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: CupertinoColors.black)),
                        ],
                      ),
                    ),
                    
                    if (_isLoading)
                      const _BigCard(
                        child: Center(
                          child: CupertinoActivityIndicator(),
                        ),
                      )
                    else if (_error != null)
                      _BigCard(
                        child: Column(
                          children: [
                            const Text('Nu s-au putut încărca datele', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                            const SizedBox(height: 8),
                            CupertinoButton(
                              child: const Text('Reîncearcă'),
                              onPressed: _fetchDashboardStats,
                            ),
                          ],
                        ),
                      )
                    else ...[
                      // Congratulations quizzes card
                      _BigCard(
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Felicitări! 🎉',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: CupertinoColors.black,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                if ((_dashboardStats?.quizzes?.completedQuizzes ?? 0) > 0) ...[
                                  Text(
                                    'Ai reușit să parcurgi până acum',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: CupertinoColors.systemGrey,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    (_dashboardStats!.quizzes!.completedQuizzes != 1)
                                        ? '${_dashboardStats!.quizzes!.completedQuizzes} teste'
                                        : 'Primul tău test alături de E-mentor!',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: theme.primaryColor,
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  CupertinoButton.filled(
                                    color: const Color.fromRGBO(40, 199, 111, 1), // Explicitly set green color
                                    child: Text('Continuă testele', style: TextStyle(color: CupertinoColors.white)),
                                    onPressed: () => context.go('/quizzes'),
                                  ),
                                ] else ...[
                                  Text(
                                    'Hai să începem primul test',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: const Color.fromRGBO(40, 199, 111, 0.7), // Green shade instead of gray
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  CupertinoButton.filled(
                                    color: const Color.fromRGBO(40, 199, 111, 1), // Explicitly set green color
                                    child: const Text('Începe testele chiar acum!'),
                                    onPressed: () => context.go('/quizzes'),
                                  ),
                                ],
                              ],
                            ),
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Container(
                                width: 75,
                                child: Image.asset(
                                  'assets/images/congratulations-john.png',
                                  fit: BoxFit.contain,
                                  errorBuilder: (context, error, stackTrace) => Center(child: Icon(CupertinoIcons.exclamationmark_triangle, color: CupertinoColors.systemRed)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                                            // Student Stats Questions Card - replicated from JS component  
                      Container(
                        margin: const EdgeInsets.only(bottom: 24),
                        child: StudentStatsQuestionsCard(
                          totalQuestions: _dashboardStats?.questions?.totalQuestions ?? 0,
                          correctQuestions: _dashboardStats?.questions?.correctQuestions ?? 0,
                        ),
                      ),
                      // Quiz stats card using our reusable widget
                      Container(
                        margin: const EdgeInsets.only(bottom: 24),
                        child: QuizStatsOverallCard(
                          completedQuizzes: _dashboardStats?.quizzes?.completedQuizzes ?? 0,
                          totalQuestions: _dashboardStats?.questions?.totalQuestions ?? 0,
                          correctQuestions: _dashboardStats?.questions?.correctQuestions ?? 0,
                          lastMonthQuizTime: _dashboardStats?.lastMonthQuizTime ?? 0,
                        ),
                      ),
                      

                      
                      // Recent results card if available
                      if (_dashboardStats?.lastMonthQuizzesResults?.isNotEmpty ?? false)
                        _BigCard(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Rezultate recente',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: theme.primaryColor),
                              ),
                              const SizedBox(height: 16),
                              ..._buildRecentResults(),
                            ],
                          ),
                        ),
                    ]
                  ],
                ),
              ),
            ),
            // Floating round disconnect button
            Positioned(
              top: 16,
              right: 16,
              child: GestureDetector(
                onTap: _showDisconnectConfirmation,
                child: Container(
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: CupertinoColors.systemRed,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(CupertinoIcons.power, color: CupertinoColors.white, size: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  
  List<Widget> _buildRecentResults() {
    final results = _dashboardStats?.lastMonthQuizzesResults?.toList() ?? [];
    if (results.isEmpty) return [];
    
    return results.take(5).map((result) {
      final date = result.date != null ? 
          '${result.date!.day}/${result.date!.month}/${result.date!.year}' : 
          'Data necunoscută';
      final percentage = result.result != null ? 
          (result.result! * 100).toStringAsFixed(0) + '%' : 
          'N/A';
      
      return Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(date, style: const TextStyle(fontSize: 16)),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: _getColorForResult(result.result ?? 0),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                percentage,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: CupertinoColors.white),
              ),
            ),
          ],
        ),
      );
    }).toList();
  }
  
  Color _getColorForResult(double result) {
    if (result >= 0.8) return const Color(0xFF28C76F); // Success
    if (result >= 0.5) return const Color(0xFFFFB155); // Warning
    return const Color(0xFFEA5455); // Danger
  }
}

class _BigCard extends StatelessWidget {
  final Widget child;
  const _BigCard({required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: CupertinoColors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 24,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: child,
    );
  }
}

import 'package:flutter/material.dart';

class QuizStatsOverallCard extends StatelessWidget {
  final int completedQuizzes;
  final int totalQuestions;
  final int correctQuestions;
  final int lastMonthQuizTime;

  const QuizStatsOverallCard({
    Key? key,
    this.completedQuizzes = 0,
    this.totalQuestions = 0,
    this.correctQuestions = 0,
    this.lastMonthQuizTime = 0,
  }) : super(key: key);

  String _formatTime(int seconds) {
    if (seconds < 60) return '$seconds secunde';
    if (seconds < 3600) {
      final minutes = (seconds / 60).floor();
      return '$minutes minut${minutes == 1 ? '' : 'e'}';
    }
    final hours = (seconds / 3600).floor();
    final minutes = ((seconds % 3600) / 60).floor();
    return '$hours or${hours == 1 ? 'ă' : 'e'} $minutes minut${minutes == 1 ? '' : 'e'}';
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final primaryColor = theme.colorScheme.primary;

    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with title and completed count - exact match to JS
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      'Testele tale',
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 8),
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Color.alphaBlend(
                        primaryColor.withOpacity(0.1),
                        Colors.transparent,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '$completedQuizzes completate',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            // Stats rows container - exact match to JS spacing
            Container(
              margin: const EdgeInsets.only(top: 8),
              child: Column(
                children: [
                  _StatRow(
                    label: 'Întrebări răspunse',
                    value: totalQuestions.toString(),
                  ),
                  const SizedBox(height: 12),
                  _StatRow(
                    label: 'Răspunsuri corecte',
                    value: correctQuestions.toString(),
                  ),
                  const SizedBox(height: 12),
                  _StatRow(
                    label: 'Timp petrecut (ultima lună)',
                    value: _formatTime(lastMonthQuizTime),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StatRow extends StatelessWidget {
  final String label;
  final String value;

  const _StatRow({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(
                label,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onSurface,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              value,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: theme.colorScheme.onSurface,
              ),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class StudentStatsQuestionsCard extends StatelessWidget {
  final int totalQuestions;
  final int correctQuestions;

  const StudentStatsQuestionsCard({
    Key? key,
    this.totalQuestions = 0,
    this.correctQuestions = 0,
  }) : super(key: key);

  double get correctPercentage {
    if (totalQuestions == 0) return 0;
    return (correctQuestions / totalQuestions * 100);
  }

  Color _getColorForPercentage(double percentage, BuildContext context) {
    if (percentage < 50) {
      return Colors.red; // Error color
    } else if (percentage < 75) {
      return Colors.orange; // Warning color
    } else {
      return Theme.of(context).colorScheme.primary; // Primary color
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final incorrectQuestions = totalQuestions - correctQuestions;
    final hasData = totalQuestions > 0;

    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Card Header
          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Evoluția ta per total',
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Aici poți vedea progresul tău de-a lungul tuturor testelor parcurse 😊',
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onSurface.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
          // Card Content
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: Row(
              children: [
                // Left side - Stats
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Total questions
                      Text(
                        totalQuestions.toString(),
                        style: theme.textTheme.displaySmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Total întrebări',
                        style: theme.textTheme.bodyMedium?.copyWith(
                          color: theme.colorScheme.onSurface.withOpacity(0.6),
                        ),
                      ),
                      const SizedBox(height: 24),
                      // Correct questions
                      _StatItem(
                        icon: Icons.check_circle,
                        iconColor: theme.colorScheme.primary,
                        title: 'Întrebări corecte',
                        subtitle: correctQuestions.toString(),
                      ),
                      const SizedBox(height: 16),
                      // Incorrect questions
                      _StatItem(
                        icon: Icons.cancel,
                        iconColor: Colors.orange,
                        title: 'Întrebări greșite',
                        subtitle: incorrectQuestions.toString(),
                      ),
                    ],
                  ),
                ),
                // Right side - Chart
                Expanded(
                  flex: 7,
                  child: Container(
                    height: 250,
                    child: hasData
                        ? Center(
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                SizedBox(
                                  width: 200,
                                  height: 200,
                                  child: PieChart(
                                    PieChartData(
                                      startDegreeOffset: -140,
                                      sectionsSpace: 0,
                                      centerSpaceRadius: 60,
                                      sections: [
                                        PieChartSectionData(
                                          value: correctPercentage,
                                          color: _getColorForPercentage(correctPercentage, context),
                                          radius: 20,
                                          showTitle: false,
                                        ),
                                        PieChartSectionData(
                                          value: 100 - correctPercentage,
                                          color: Colors.grey.withOpacity(0.2),
                                          radius: 20,
                                          showTitle: false,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                // Center text
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Media răspunsurilor tale',
                                      style: theme.textTheme.bodySmall?.copyWith(
                                        color: theme.colorScheme.onSurface.withOpacity(0.6),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    const SizedBox(height: 8),
                                    Text(
                                      '${correctPercentage.toStringAsFixed(1)}%',
                                      style: theme.textTheme.headlineLarge?.copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: _getColorForPercentage(correctPercentage, context),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        : Center(
                            child: Text(
                              'Nu există încă suficiente date.',
                              style: theme.textTheme.headlineSmall?.copyWith(
                                color: theme.colorScheme.onSurface.withOpacity(0.6),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _StatItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subtitle;

  const _StatItem({
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Row(
      children: [
        Container(
          width: 34,
          height: 34,
          decoration: BoxDecoration(
            color: iconColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: iconColor,
            size: 20,
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                subtitle,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurface.withOpacity(0.6),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
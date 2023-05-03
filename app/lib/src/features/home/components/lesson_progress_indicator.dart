import 'package:flutter/material.dart';

import '../../../shared/data/database/progression_database.dart';

class LessonProgressIndicator extends StatelessWidget {
  final LessonProgression progress;

  const LessonProgressIndicator({
    Key? key,
    required this.progress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    if(progress.progression == 0) return Container();
    final progressValue =
        progress.progression.toDouble() / progress.maxProgression.toDouble();
    const size = 15.0;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      height: size,
      width: size,
      child: Visibility(
        visible: progress.progression > 0,
        child: CircularProgressIndicator(
          value: progressValue,
          color: colors.surfaceTint,
          strokeWidth: size,
          backgroundColor: colors.surfaceVariant,
        ),
      ),
    );
  }
}

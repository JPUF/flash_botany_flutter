import 'package:flutter/material.dart';

import '../../../shared/data/database/progression_database.dart';
import '../../../shared/extensions.dart';
import '../../../shared/models/lesson.dart';
import 'lesson_progress_indicator.dart';

class LessonButton extends StatelessWidget {
  const LessonButton({
    Key? key,
    required this.onTap,
    required this.lesson,
    required this.progression,
  }) : super(key: key);

  final VoidCallback onTap;
  final Lesson lesson;
  final LessonProgression progression;

  @override
  Widget build(BuildContext context) => Card(
        elevation: 4,
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Material(
          child: InkWell(
            onTap: onTap,
            child: _LessonButtonContent(
              lesson: lesson,
              progression: progression,
            ),
          ),
        ),
      );
}

class _LessonButtonContent extends StatelessWidget {
  const _LessonButtonContent({
    Key? key,
    required this.lesson,
    required this.progression,
  }) : super(key: key);

  final Lesson lesson;
  final LessonProgression progression;

  @override
  Widget build(BuildContext context) {
    const imgSize = 75.0;
    return Container(
      margin: const EdgeInsets.all(4),
      child: Row(
        children: [
          ClipOval(
            child: Image(
              image: AssetImage(lesson.familySet.first.assetImgPath),
              width: imgSize,
              height: imgSize,
            ),
          ),
          Expanded(
            child: _LessonTitleProgress(
              lesson: lesson,
              progression: progression,
            ),
          ),
          ClipOval(
            child: Image(
              image: AssetImage(lesson.familySet[1].assetImgPath),
              width: imgSize,
              height: imgSize,
            ),
          ),
        ],
      ),
    );
  }
}

class _LessonTitleProgress extends StatelessWidget {
  const _LessonTitleProgress({required this.lesson, required this.progression});

  final Lesson lesson;
  final LessonProgression progression;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            lesson.title,
            textAlign: TextAlign.center,
            style: context.titleLarge,
          ),
          LessonProgressIndicator(progress: progression),
        ],
      ),
    );
  }
}

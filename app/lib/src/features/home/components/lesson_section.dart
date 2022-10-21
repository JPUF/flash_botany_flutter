import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/data/lesson_data.dart';
import '../../../shared/destinations.dart';
import '../../../shared/models/lesson.dart';
import '../../../shared/util_widgets.dart';
import 'basic_button.dart';

class LessonSection extends StatelessWidget {
  const LessonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lessonsExcludingAll = LessonData.lessons.toList();
    lessonsExcludingAll.removeAt(0);
    return Column(
      children: lessonsExcludingAll
          .map((lesson) => PlatformSized(
                  child: BasicButton(
                text: lesson.title,
                onTap: () => _toQuiz(lesson, context),
              )))
          .toList(),
    );
  }

  void _toQuiz(Lesson lesson, BuildContext context) {
    GoRouter.of(context).push(Destination.quiz.path, extra: lesson);
  }
}

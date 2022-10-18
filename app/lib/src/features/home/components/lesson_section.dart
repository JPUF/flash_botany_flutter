import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/data/lesson_data.dart';
import '../../../shared/data/species_data.dart';
import '../../../shared/destinations.dart';
import '../../../shared/strings.dart';
import '../../../shared/util_widgets.dart';
import 'basic_button.dart';

class LessonSection extends StatelessWidget {
  LessonSection({
    Key? key,
  }) : super(key: key);

  final List<BasicButton> lessonButtons = LessonData.lessons
      .map((l) => BasicButton(
            text: l.title,
            onTap: () {},
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlatformSized(
          child: BasicButton(
            text: Strings.lessonAsteraceaeRosaceae,
            onTap: () => _toQuiz(QuizId.asteraceaeRosaceae, context),
          ),
        ),
        PlatformSized(
          child: BasicButton(
            text: Strings.lessonBrassicaceaeLamiaceae,
            onTap: () => _toQuiz(QuizId.brassicaceaeLamiaceae, context),
          ),
        ),
      ],
    );
  }

  void _toQuiz(QuizId quizId, BuildContext context) {
    GoRouter.of(context).push(Destination.quiz.path, extra: quizId);
  }
}

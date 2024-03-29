import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../shared/data/lesson_data.dart';
import '../../shared/models/family.dart';
import '../../shared/models/lesson.dart';
import '../../shared/strings.dart';
import '../../shared/util_widgets.dart';
import '../../shared/views/custom_app_bar.dart';
import '../customLesson/custom_lesson_screen.dart';
import '../quiz/view/quiz_screen.dart';
import 'components/custom_quiz_button.dart';
import 'components/hero_quiz_button.dart';
import 'components/lesson_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(showBackButton: false),
      body: SafeArea(
        child: Scrollbar(
          child: SizedBox.expand(
            child: SizedBox.expand(child: HomeScreenContent()),
          ),
        ),
      ),
    );
  }
}

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({
    Key? key,
  }) : super(key: key);

  void _toQuizScreen(
    BuildContext context,
    Lesson lesson,
  ) => PersistentNavBarNavigator.pushNewScreen(
    context,
    screen: QuizScreen(lesson: lesson),
  );

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          const SizedBox(height: 32),
          PlatformSized(
            child: HeroQuizButton(
              onTap: () => _toQuizScreen(context, const Lesson(
                title: Strings.allLessonCta,
                familySet: Family.values,
                indefinite: true,
              )),
            ),
          ),
          const SizedBox(height: 16),
          PlatformSized(
            child: CustomQuizButton(
              onTap: () => PersistentNavBarNavigator.pushNewScreen(
                context,
                screen: const CustomLessonScreen(),
              ),
            ),
          ),
          const SizedBox(height: 32),
          const LessonSection(),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

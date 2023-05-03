import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../shared/data/lesson_data.dart';
import '../../shared/strings.dart';
import '../../shared/util_widgets.dart';
import '../../shared/views/custom_app_bar.dart';
import '../morphology/morphology_screen.dart';
import '../quiz/view/quiz_screen.dart';
import 'components/basic_button.dart';
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
            child: BasicButton(
                text: Strings.flowerCta,
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(context,
                      screen: const MorphologyScreen());
                }),
          ),
          const SizedBox(height: 32),
          const LessonSection(),
          const SizedBox(height: 32),
          PlatformSized(
            child: HeroQuizButton(
              onTap: () => PersistentNavBarNavigator.pushNewScreen(context,
                  screen: QuizScreen(lesson: LessonData.lessons.first)),
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}

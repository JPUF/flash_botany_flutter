import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../shared/data/lesson_data.dart';
import '../../shared/destinations.dart';
import '../../shared/strings.dart';
import '../../shared/util_widgets.dart';
import '../../shared/views/custom_app_bar.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: 12),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          PlatformSized(
            child: BasicButton(
                text: Strings.flowerCta,
                onTap: () {
                  GoRouter.of(context).push(Destination.morphology.path);
                }),
          ),
          PlatformSized(
            child: BasicButton(
                text: Strings.factfileCta,
                onTap: () {
                  GoRouter.of(context).push(Destination.factfile.path);
                }),
          ),
          PlatformSized(
            child: HeroQuizButton(
              onTap: () => GoRouter.of(context).push(
                Destination.quiz.path,
                extra: LessonData.lessons.first,
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

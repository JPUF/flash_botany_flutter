import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../../shared/blocs/progression/progression_bloc.dart';
import '../../../shared/data/database/progression_database.dart';
import '../../../shared/data/lesson_data.dart';
import '../../../shared/extensions.dart';
import '../../../shared/models/lesson.dart';
import '../../../shared/strings.dart';
import '../../../shared/util_widgets.dart';
import '../../quiz/view/quiz_screen.dart';
import 'basic_button.dart';
import 'lesson_progress_indicator.dart';

class LessonSection extends StatefulWidget {
  const LessonSection({Key? key}) : super(key: key);

  @override
  State<LessonSection> createState() => _LessonSectionState();
}

class _LessonSectionState extends State<LessonSection> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<ProgressionBloc>(context)
        .add(const ProgressionEvent.getProgressions());
  }

  @override
  Widget build(BuildContext context) {
    final lessonsExcludingAll = LessonData.lessons.toList();
    lessonsExcludingAll.removeAt(0);
    return BlocBuilder<ProgressionBloc, ProgressionState>(
      builder: (context, state) {
        final List<LessonProgression>? progressions =
            state.progressions?.toList();
        if (progressions == null) return Container();
        progressions.removeAt(0); // To remove 'all families' from this section
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Theme.of(context).colorScheme.surfaceVariant,
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.lessonHeader,
                style: context.headlineSmall,
              ),
              const SizedBox(height: 16),
              _progressionsList(progressions, context),
            ],
          ),
        );
      },
    );
  }

  Column _progressionsList(
    List<LessonProgression> progressions,
    BuildContext context,
  ) {
    return Column(
        children: progressions.map(
      (p) {
        final lesson = LessonData.lessons.firstWhereOrNull((l) => l.id == p.id);
        if (lesson == null) return Container();
        return _lessonButton(lesson, p, context);
      },
    ).toList());
  }

  PlatformSized _lessonButton(
    Lesson lesson,
    LessonProgression progression,
    BuildContext context,
  ) {
    return PlatformSized(
      child: BasicButton(
        text: lesson.title,
        onTap: () => PersistentNavBarNavigator.pushNewScreen(context,
            screen: QuizScreen(lesson: lesson)),
        trailingWidget: LessonProgressIndicator(progress: progression),
      ),
    );
  }
}

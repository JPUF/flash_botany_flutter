import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../shared/blocs/progression/progression_bloc.dart';
import '../../../shared/data/lesson_data.dart';
import '../../../shared/destinations.dart';
import '../../../shared/models/lesson.dart';
import '../../../shared/models/lesson_progression.dart';
import '../../../shared/util_widgets.dart';
import 'basic_button.dart';

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
        final progressions = state.progressions?.toList();
        if (progressions == null) return Container();
        progressions.removeAt(0); // To remove 'all families' from this section
        return Column(children: _progressionsList(progressions, context));
      },
    );
  }

  List<StatelessWidget> _progressionsList(
      List<LessonProgression> progressions, BuildContext context) {
    return progressions.map(
      (p) {
        final lesson = LessonData.lessons.firstWhereOrNull((l) => l.id == p.id);
        if (lesson == null) return Container();
        return _lessonButton(lesson, p, context);
      },
    ).toList();
  }

  PlatformSized _lessonButton(
    Lesson lesson,
    LessonProgression progression,
    BuildContext context,
  ) {
    return PlatformSized(
      child: BasicButton(
        text: '${lesson.title} ${progression.progression}',
        onTap: () => _toQuiz(lesson, context),
      ),
    );
  }

  void _toQuiz(Lesson lesson, BuildContext context) {
    GoRouter.of(context).push(Destination.quiz.path, extra: lesson);
  }
}

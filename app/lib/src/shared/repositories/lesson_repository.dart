import 'package:collection/collection.dart';

import '../data/lesson_data.dart';
import '../models/lesson.dart';
import '../models/lesson_progression.dart';

class LessonRepository {
  final List<LessonProgression> lessonProgressions = LessonData.lessons
      .map((l) => LessonProgression(id: l.id, progression: 0))
      .toList();

  LessonRepository() {
    _readProgressions();
  }

  int? getProgression(Lesson lesson) {
    final savedLesson =
        lessonProgressions.firstWhereOrNull((l) => l.id == lesson.id);
    return savedLesson?.progression;
  }

  void incrementLessonProgression(Lesson lesson) {
    final progress = getProgression(lesson);
    if (progress == null) return;
    if (progress < LessonData.maxProgression) {
      // savedLesson.progression += 1;
      // TODO update lesson with incremented progress
    }
  }

  void _readProgressions() {}

  void _writeProgressions(Map<String, int> progressions) {}
}

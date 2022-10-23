import 'package:collection/collection.dart';

import '../data/lesson_data.dart';
import '../data/progression_database.dart';
import '../injection.dart';
import '../models/lesson.dart';
import '../models/lesson_progression.dart';

class LessonRepository {
  final _db = getIt<ProgressionDatabase>();

  Future<int?> getProgression(Lesson lesson) async {
    final lessonProgressions = await _db.lessonProgressions();
    final savedLesson =
        lessonProgressions.firstWhereOrNull((l) => l.id == lesson.id);
    return savedLesson?.progression;
  }

  Future<List<LessonProgression>> getAllProgressions() async {
    return await _db.lessonProgressions();
  }

  Future<void> incrementLessonProgression(Lesson lesson) async {
    final progress = await getProgression(lesson);
    if (progress == null) return;
    if (progress < LessonData.maxProgression) {
      _db.updateProgress(LessonProgression(
        id: lesson.id,
        progression: progress + 1,
      ));
    }
  }
}

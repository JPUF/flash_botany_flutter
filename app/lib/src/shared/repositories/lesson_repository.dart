import 'package:collection/collection.dart';
import 'package:drift/drift.dart';

import '../data/database/progression_database.dart';
import '../data/lesson_data.dart';
import '../injection.dart';
import '../models/lesson.dart';

class LessonRepository {
  final _db = getIt<ProgressionDatabase>();

  Future<int?> getProgression(Lesson lesson) async {
    var progression = await _getProgressionOrNull(lesson);
    if (progression == null) {
      await _insertProgression(lesson);
      progression = await _getProgressionOrNull(lesson);
    }
    return progression?.progression;
  }

  Future<LessonProgression?> _getProgressionOrNull(Lesson lesson) async {
    final select = _db.select(_db.lessonProgressions);
    final query = select..where((tbl) => tbl.id.equals(lesson.id));
    final results = await query.get();
    return results.firstOrNull;
  }

  Future _insertProgression(Lesson lesson) async {
    final into = _db.into(_db.lessonProgressions);
    await into.insert(
      LessonProgressionsCompanion.insert(id: lesson.id, progression: 0),
      mode: InsertMode.insertOrIgnore,
    );
  }

  Future<List<LessonProgression>> getAllProgressions() async {
    final selectAll = _db.select(_db.lessonProgressions);
    var all = await selectAll.get();
    if (all.isEmpty) {
      await _insertInitialValues();
      all = await selectAll.get();
    }
    return all;
  }

  Future _insertInitialValues() async {
    for (var lesson in LessonData.lessons) {
      _insertProgression(lesson);
    }
  }

  Future incrementLessonProgression(Lesson lesson) async {
    final progression = await _getProgressionOrNull(lesson);
    if (progression == null) return;
    if (progression.progression < LessonData.maxProgression) {
      final update = _db.update(_db.lessonProgressions);
      final query = update..where((tbl) => tbl.id.equals(lesson.id));
      query.write(LessonProgressionsCompanion(
        progression: Value(progression.progression + 1),
      ));
    }
  }
}

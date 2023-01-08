import 'package:collection/collection.dart';
import 'package:drift/drift.dart';

import '../data/drift_progression_database.dart';
import '../data/lesson_data.dart';
import '../injection.dart';
import '../models/lesson.dart';

class LessonRepository {
  final _dbDrift = getIt<DriftProgressionDatabase>();

  Future<int?> getProgression(Lesson lesson) async {
    var progression = await _getProgressionOrNull(lesson);
    if (progression == null) {
      await _insertProgression(lesson);
      progression = await _getProgressionOrNull(lesson);
    }
    return progression?.progression;
  }

  Future<DriftLessonProgression?> _getProgressionOrNull(Lesson lesson) async {
    final select = _dbDrift.select(_dbDrift.driftLessonProgressions);
    final query = select..where((tbl) => tbl.id.equals(lesson.id));
    final results = await query.get();
    return results.firstOrNull;
  }

  Future _insertProgression(Lesson lesson) async {
    final into = _dbDrift.into(_dbDrift.driftLessonProgressions);
    await into.insert(
      DriftLessonProgressionsCompanion.insert(id: lesson.id, progression: 0),
      mode: InsertMode.insertOrIgnore,
    );
  }

  Future<List<DriftLessonProgression>> getAllProgressions() async {
    final selectAll = _dbDrift.select(_dbDrift.driftLessonProgressions);
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
      final update = _dbDrift.update(_dbDrift.driftLessonProgressions);
      final query = update..where((tbl) => tbl.id.equals(lesson.id));
      query.write(DriftLessonProgressionsCompanion(
        progression: Value(progression.progression + 1),
      ));
    }
  }
}

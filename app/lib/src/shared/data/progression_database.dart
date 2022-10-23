import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../models/lesson_progression.dart';
import 'lesson_data.dart';

class ProgressionDatabase {
  static const id = 'id';
  static const progression = 'progression';
  static const _table = 'progressions';

  final List<LessonProgression> _lessonProgressions = LessonData.lessons
      .map((l) => LessonProgression(id: l.id, progression: 0))
      .toList();

  Future<Database> openProgressionDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), 'progression_database.db'),
      onCreate: _onCreate,
      version: 1,
    );
  }

  _onCreate(Database db, int version) async {
    await db.execute(
      'CREATE TABLE IF NOT EXISTS $_table('
      '$id TEXT PRIMARY KEY, '
      '$progression INTEGER'
      ')',
    );
    await _initDefaultValues(db);
  }

  Future<void> _initDefaultValues(Database db) async {
    for (var progress in _lessonProgressions) {
      await db.insert(
        _table,
        progress.toMap(),
        conflictAlgorithm: ConflictAlgorithm.ignore,
      );
    }
  }

  Future<List<LessonProgression>> lessonProgressions() async {
    final db = await openProgressionDatabase();
    final List<Map<String, dynamic>> maps = await db.query(_table);

    return List.generate(maps.length, (i) {
      return LessonProgression(
        id: maps[i][id] as String,
        progression: maps[i][progression] as int,
      );
    });
  }

  Future<void> updateProgress(LessonProgression progress) async {
    final db = await openProgressionDatabase();
    await db.update(
      _table,
      progress.toMap(),
      where: '$id = ?',
      whereArgs: [progress.id],
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
}

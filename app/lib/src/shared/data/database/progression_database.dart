import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../lesson_data.dart';

part 'progression_database.g.dart';

class LessonProgressions extends Table {
  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text()();

  IntColumn get progression => integer()();

  IntColumn get maxProgression =>
      integer().withDefault(const Constant(LessonData.maxProgression))();
}

@DriftDatabase(tables: [LessonProgressions])
class ProgressionDatabase extends _$ProgressionDatabase {
  ProgressionDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}

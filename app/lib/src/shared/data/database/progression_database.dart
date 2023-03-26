import 'package:drift/drift.dart';

import '../lesson_data.dart';

export 'shared.dart';

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
  ProgressionDatabase(QueryExecutor e) : super(e);

  @override
  int get schemaVersion => 1;
}

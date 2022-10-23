import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class ProgressionDatabase {
  static const id = 'id';
  static const progression = 'progression';

  Future<Database> openProgressionDatabase() async {
    return openDatabase(
      join(await getDatabasesPath(), 'progression_database.db'),
      onCreate: (db, version) {
        return db.execute(
          'CREATE TABLE progressions($id TEXT PRIMARY KEY, $progression INTEGER)',
        );
      },
      version: 1,
    );
  }
}

import 'package:drift/web.dart';

import 'progression_database.dart';

ProgressionDatabase constructDb({bool logStatements = false}) {
  return ProgressionDatabase(WebDatabase('db', logStatements: logStatements));
}

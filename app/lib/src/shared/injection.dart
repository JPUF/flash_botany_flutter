import 'package:get_it/get_it.dart';

import 'data/database/progression_database.dart';
import 'repositories/lesson_repository.dart';

final getIt = GetIt.instance;

void setupInjection() {
  getIt.registerSingleton<ProgressionDatabase>(constructDb());
  getIt.registerSingleton<LessonRepository>(LessonRepository());
}

import 'package:get_it/get_it.dart';

import 'data/progression_database.dart';
import 'repositories/lesson_repository.dart';

final getIt = GetIt.instance;

void setupInjection() {
  getIt.registerSingleton<ProgressionDatabase>(ProgressionDatabase());
  getIt.registerSingleton<LessonRepository>(LessonRepository());
}

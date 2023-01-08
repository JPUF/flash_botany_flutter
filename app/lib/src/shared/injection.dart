import 'package:get_it/get_it.dart';

import 'data/drift_progression_database.dart';
import 'repositories/lesson_repository.dart';

final getIt = GetIt.instance;

void setupInjection() {
  getIt.registerSingleton<DriftProgressionDatabase>(DriftProgressionDatabase());
  getIt.registerSingleton<LessonRepository>(LessonRepository());
}

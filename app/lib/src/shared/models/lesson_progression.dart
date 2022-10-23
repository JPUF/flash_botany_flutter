import '../data/progression_database.dart';

class LessonProgression {
  final String id;
  final int progression;

  const LessonProgression({
    required this.id,
    required this.progression,
  });

  Map<String, dynamic> toMap() {
    return {
      ProgressionDatabase.id : id,
      ProgressionDatabase.progression: progression,
    };
  }
}

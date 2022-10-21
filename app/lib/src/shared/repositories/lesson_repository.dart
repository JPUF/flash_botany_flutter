import '../data/lesson_data.dart';
import '../models/lesson.dart';

class LessonRepository {
  final Map<Lesson, int> lessonProgressions = Map.fromEntries(
    LessonData.lessons.map((lesson) => MapEntry(lesson, 0)),
  );

  void incrementLessonProgression(Lesson lesson) {
    final progress = lessonProgressions[lesson];
    if (progress != null && progress < LessonData.maxProgression) {
      lessonProgressions[LessonData.lessons[1]] = progress + 1;
    }
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

import 'family.dart';
import 'species.dart';

part 'lesson.freezed.dart';
part 'lesson.g.dart';

@freezed
class Lesson with _$Lesson {
  const factory Lesson({
    required String title,
    required List<Family> familySet,
    required List<Species> speciesSet,
    @Default(false) bool passed,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, Object?> json) => _$LessonFromJson(json);
}

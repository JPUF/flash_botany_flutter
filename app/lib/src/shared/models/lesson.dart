import 'package:freezed_annotation/freezed_annotation.dart';

import 'family.dart';
import 'species.dart';

part 'lesson.freezed.dart';
part 'lesson.g.dart';

// class Lesson {
//   final String title;
//   final List<Family> familySet;
//   final List<Species> speciesSet;
//   int progress = 0;
//   bool passed = false;
//
//   Lesson(this.title, this.familySet, this.speciesSet);
// }

// @Freezed()
// class Lesson with _$Lesson {
//   factory Lesson({
//     required final String title,
//     required final List<Family> familySet,
//     required final List<Species> speciesSet,
//     // @Default(0) int progress,
//     // @Default(false) bool passed,
//   }) = _Lesson;
//
//   factory Lesson.fromJson(Map<String, Object?> json)
//   => _$LessonFromJson(json);
// }

@freezed
class Lesson with _$Lesson {
  const factory Lesson({
    required String title,
    required List<Family> familySet,
    required List<Species> speciesSet,
    @Default(0) int progress,
    @Default(false) bool passed,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, Object?> json) => _$LessonFromJson(json);
}

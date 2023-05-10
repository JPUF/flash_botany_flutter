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
    @Default(false) bool passed,
    @Default(false) bool indefinite,
  }) = _Lesson;

  factory Lesson.fromJson(Map<String, Object?> json) => _$LessonFromJson(json);
}

extension LessonExtension on Lesson {
  List<Species> get speciesSet =>
   familySet.expand<Species>((family) => family.speciesList).toList();

  String get id => familySet.map((e) => e.latinName.hashCode).join();
}

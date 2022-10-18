// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Lesson _$$_LessonFromJson(Map<String, dynamic> json) => _$_Lesson(
      title: json['title'] as String,
      familySet: (json['familySet'] as List<dynamic>)
          .map((e) => $enumDecode(_$FamilyEnumMap, e))
          .toList(),
      speciesSet: (json['speciesSet'] as List<dynamic>)
          .map((e) => Species.fromJson(e as Map<String, dynamic>))
          .toList(),
      progress: json['progress'] as int? ?? 0,
      passed: json['passed'] as bool? ?? false,
    );

Map<String, dynamic> _$$_LessonToJson(_$_Lesson instance) => <String, dynamic>{
      'title': instance.title,
      'familySet': instance.familySet.map((e) => _$FamilyEnumMap[e]!).toList(),
      'speciesSet': instance.speciesSet,
      'progress': instance.progress,
      'passed': instance.passed,
    };

const _$FamilyEnumMap = {
  Family.asteraceae: 'asteraceae',
  Family.apiaceae: 'apiaceae',
  Family.boraginaceae: 'boraginaceae',
  Family.brassicaceae: 'brassicaceae',
  Family.caryophyllaceae: 'caryophyllaceae',
  Family.fabaceae: 'fabaceae',
  Family.lamiaceae: 'lamiaceae',
  Family.rosaceae: 'rosaceae',
};

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
      passed: json['passed'] as bool? ?? false,
      indefinite: json['indefinite'] as bool? ?? false,
    );

Map<String, dynamic> _$$_LessonToJson(_$_Lesson instance) => <String, dynamic>{
      'title': instance.title,
      'familySet': instance.familySet.map((e) => _$FamilyEnumMap[e]!).toList(),
      'passed': instance.passed,
      'indefinite': instance.indefinite,
    };

const _$FamilyEnumMap = {
  Family.asteraceae: 'asteraceae',
  Family.apiaceae: 'apiaceae',
  Family.boraginaceae: 'boraginaceae',
  Family.brassicaceae: 'brassicaceae',
  Family.caryophyllaceae: 'caryophyllaceae',
  Family.euphorbiaceae: 'euphorbiaceae',
  Family.fabaceae: 'fabaceae',
  Family.geraniaceae: 'geraniaceae',
  Family.lamiaceae: 'lamiaceae',
  Family.onagraceae: 'onagraceae',
  Family.orchidaceae: 'orchidaceae',
  Family.polygonaceae: 'polygonaceae',
  Family.ranunculaceae: 'ranunculaceae',
  Family.rosaceae: 'rosaceae',
};

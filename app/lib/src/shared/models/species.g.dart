// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Species _$$_SpeciesFromJson(Map<String, dynamic> json) => _$_Species(
      latinName: json['latinName'] as String,
      commonName: json['commonName'] as String,
      family: $enumDecode(_$FamilyEnumMap, json['family']),
      images: (json['images'] as List<dynamic>)
          .map((e) => AttributedUrl.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SpeciesToJson(_$_Species instance) =>
    <String, dynamic>{
      'latinName': instance.latinName,
      'commonName': instance.commonName,
      'family': _$FamilyEnumMap[instance.family]!,
      'images': instance.images,
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

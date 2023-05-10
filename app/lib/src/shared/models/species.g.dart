// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'species.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Species _$$_SpeciesFromJson(Map<String, dynamic> json) => _$_Species(
      latinName: json['latinName'] as String,
      commonName: json['commonName'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => AttributedUrl.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SpeciesToJson(_$_Species instance) =>
    <String, dynamic>{
      'latinName': instance.latinName,
      'commonName': instance.commonName,
      'images': instance.images,
    };

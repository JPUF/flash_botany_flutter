// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'species.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Species _$SpeciesFromJson(Map<String, dynamic> json) {
  return _Species.fromJson(json);
}

/// @nodoc
mixin _$Species {
  String get latinName => throw _privateConstructorUsedError;
  String get commonName => throw _privateConstructorUsedError;
  Family get family => throw _privateConstructorUsedError;
  List<AttributedUrl> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpeciesCopyWith<Species> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpeciesCopyWith<$Res> {
  factory $SpeciesCopyWith(Species value, $Res Function(Species) then) =
      _$SpeciesCopyWithImpl<$Res>;
  $Res call(
      {String latinName,
      String commonName,
      Family family,
      List<AttributedUrl> images});
}

/// @nodoc
class _$SpeciesCopyWithImpl<$Res> implements $SpeciesCopyWith<$Res> {
  _$SpeciesCopyWithImpl(this._value, this._then);

  final Species _value;
  // ignore: unused_field
  final $Res Function(Species) _then;

  @override
  $Res call({
    Object? latinName = freezed,
    Object? commonName = freezed,
    Object? family = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      latinName: latinName == freezed
          ? _value.latinName
          : latinName // ignore: cast_nullable_to_non_nullable
              as String,
      commonName: commonName == freezed
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String,
      family: family == freezed
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Family,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<AttributedUrl>,
    ));
  }
}

/// @nodoc
abstract class _$$_SpeciesCopyWith<$Res> implements $SpeciesCopyWith<$Res> {
  factory _$$_SpeciesCopyWith(
          _$_Species value, $Res Function(_$_Species) then) =
      __$$_SpeciesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String latinName,
      String commonName,
      Family family,
      List<AttributedUrl> images});
}

/// @nodoc
class __$$_SpeciesCopyWithImpl<$Res> extends _$SpeciesCopyWithImpl<$Res>
    implements _$$_SpeciesCopyWith<$Res> {
  __$$_SpeciesCopyWithImpl(_$_Species _value, $Res Function(_$_Species) _then)
      : super(_value, (v) => _then(v as _$_Species));

  @override
  _$_Species get _value => super._value as _$_Species;

  @override
  $Res call({
    Object? latinName = freezed,
    Object? commonName = freezed,
    Object? family = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_Species(
      latinName: latinName == freezed
          ? _value.latinName
          : latinName // ignore: cast_nullable_to_non_nullable
              as String,
      commonName: commonName == freezed
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String,
      family: family == freezed
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Family,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<AttributedUrl>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Species implements _Species {
  const _$_Species(
      {required this.latinName,
      required this.commonName,
      required this.family,
      required final List<AttributedUrl> images})
      : _images = images;

  factory _$_Species.fromJson(Map<String, dynamic> json) =>
      _$$_SpeciesFromJson(json);

  @override
  final String latinName;
  @override
  final String commonName;
  @override
  final Family family;
  final List<AttributedUrl> _images;
  @override
  List<AttributedUrl> get images {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'Species(latinName: $latinName, commonName: $commonName, family: $family, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Species &&
            const DeepCollectionEquality().equals(other.latinName, latinName) &&
            const DeepCollectionEquality()
                .equals(other.commonName, commonName) &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latinName),
      const DeepCollectionEquality().hash(commonName),
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  _$$_SpeciesCopyWith<_$_Species> get copyWith =>
      __$$_SpeciesCopyWithImpl<_$_Species>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SpeciesToJson(
      this,
    );
  }
}

abstract class _Species implements Species {
  const factory _Species(
      {required final String latinName,
      required final String commonName,
      required final Family family,
      required final List<AttributedUrl> images}) = _$_Species;

  factory _Species.fromJson(Map<String, dynamic> json) = _$_Species.fromJson;

  @override
  String get latinName;
  @override
  String get commonName;
  @override
  Family get family;
  @override
  List<AttributedUrl> get images;
  @override
  @JsonKey(ignore: true)
  _$$_SpeciesCopyWith<_$_Species> get copyWith =>
      throw _privateConstructorUsedError;
}

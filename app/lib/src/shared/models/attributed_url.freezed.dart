// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'attributed_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttributedUrl _$AttributedUrlFromJson(Map<String, dynamic> json) {
  return _AttributedUrl.fromJson(json);
}

/// @nodoc
mixin _$AttributedUrl {
  String get url => throw _privateConstructorUsedError;
  String? get attribution => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributedUrlCopyWith<AttributedUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributedUrlCopyWith<$Res> {
  factory $AttributedUrlCopyWith(
          AttributedUrl value, $Res Function(AttributedUrl) then) =
      _$AttributedUrlCopyWithImpl<$Res>;
  $Res call({String url, String? attribution});
}

/// @nodoc
class _$AttributedUrlCopyWithImpl<$Res>
    implements $AttributedUrlCopyWith<$Res> {
  _$AttributedUrlCopyWithImpl(this._value, this._then);

  final AttributedUrl _value;
  // ignore: unused_field
  final $Res Function(AttributedUrl) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? attribution = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      attribution: attribution == freezed
          ? _value.attribution
          : attribution // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AttributedUrlCopyWith<$Res>
    implements $AttributedUrlCopyWith<$Res> {
  factory _$$_AttributedUrlCopyWith(
          _$_AttributedUrl value, $Res Function(_$_AttributedUrl) then) =
      __$$_AttributedUrlCopyWithImpl<$Res>;
  @override
  $Res call({String url, String? attribution});
}

/// @nodoc
class __$$_AttributedUrlCopyWithImpl<$Res>
    extends _$AttributedUrlCopyWithImpl<$Res>
    implements _$$_AttributedUrlCopyWith<$Res> {
  __$$_AttributedUrlCopyWithImpl(
      _$_AttributedUrl _value, $Res Function(_$_AttributedUrl) _then)
      : super(_value, (v) => _then(v as _$_AttributedUrl));

  @override
  _$_AttributedUrl get _value => super._value as _$_AttributedUrl;

  @override
  $Res call({
    Object? url = freezed,
    Object? attribution = freezed,
  }) {
    return _then(_$_AttributedUrl(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      attribution: attribution == freezed
          ? _value.attribution
          : attribution // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttributedUrl implements _AttributedUrl {
  const _$_AttributedUrl({required this.url, required this.attribution});

  factory _$_AttributedUrl.fromJson(Map<String, dynamic> json) =>
      _$$_AttributedUrlFromJson(json);

  @override
  final String url;
  @override
  final String? attribution;

  @override
  String toString() {
    return 'AttributedUrl(url: $url, attribution: $attribution)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttributedUrl &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.attribution, attribution));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(attribution));

  @JsonKey(ignore: true)
  @override
  _$$_AttributedUrlCopyWith<_$_AttributedUrl> get copyWith =>
      __$$_AttributedUrlCopyWithImpl<_$_AttributedUrl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributedUrlToJson(
      this,
    );
  }
}

abstract class _AttributedUrl implements AttributedUrl {
  const factory _AttributedUrl(
      {required final String url,
      required final String? attribution}) = _$_AttributedUrl;

  factory _AttributedUrl.fromJson(Map<String, dynamic> json) =
      _$_AttributedUrl.fromJson;

  @override
  String get url;
  @override
  String? get attribution;
  @override
  @JsonKey(ignore: true)
  _$$_AttributedUrlCopyWith<_$_AttributedUrl> get copyWith =>
      throw _privateConstructorUsedError;
}
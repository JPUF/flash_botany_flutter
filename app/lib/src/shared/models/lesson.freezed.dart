// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lesson.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Lesson _$LessonFromJson(Map<String, dynamic> json) {
  return _Lesson.fromJson(json);
}

/// @nodoc
mixin _$Lesson {
  String get title => throw _privateConstructorUsedError;
  List<Family> get familySet => throw _privateConstructorUsedError;
  List<Species> get speciesSet => throw _privateConstructorUsedError;
  bool get passed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonCopyWith<Lesson> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonCopyWith<$Res> {
  factory $LessonCopyWith(Lesson value, $Res Function(Lesson) then) =
      _$LessonCopyWithImpl<$Res>;
  $Res call(
      {String title,
      List<Family> familySet,
      List<Species> speciesSet,
      bool passed});
}

/// @nodoc
class _$LessonCopyWithImpl<$Res> implements $LessonCopyWith<$Res> {
  _$LessonCopyWithImpl(this._value, this._then);

  final Lesson _value;
  // ignore: unused_field
  final $Res Function(Lesson) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? familySet = freezed,
    Object? speciesSet = freezed,
    Object? passed = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      familySet: familySet == freezed
          ? _value.familySet
          : familySet // ignore: cast_nullable_to_non_nullable
              as List<Family>,
      speciesSet: speciesSet == freezed
          ? _value.speciesSet
          : speciesSet // ignore: cast_nullable_to_non_nullable
              as List<Species>,
      passed: passed == freezed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_LessonCopyWith<$Res> implements $LessonCopyWith<$Res> {
  factory _$$_LessonCopyWith(_$_Lesson value, $Res Function(_$_Lesson) then) =
      __$$_LessonCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      List<Family> familySet,
      List<Species> speciesSet,
      bool passed});
}

/// @nodoc
class __$$_LessonCopyWithImpl<$Res> extends _$LessonCopyWithImpl<$Res>
    implements _$$_LessonCopyWith<$Res> {
  __$$_LessonCopyWithImpl(_$_Lesson _value, $Res Function(_$_Lesson) _then)
      : super(_value, (v) => _then(v as _$_Lesson));

  @override
  _$_Lesson get _value => super._value as _$_Lesson;

  @override
  $Res call({
    Object? title = freezed,
    Object? familySet = freezed,
    Object? speciesSet = freezed,
    Object? passed = freezed,
  }) {
    return _then(_$_Lesson(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      familySet: familySet == freezed
          ? _value._familySet
          : familySet // ignore: cast_nullable_to_non_nullable
              as List<Family>,
      speciesSet: speciesSet == freezed
          ? _value._speciesSet
          : speciesSet // ignore: cast_nullable_to_non_nullable
              as List<Species>,
      passed: passed == freezed
          ? _value.passed
          : passed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lesson implements _Lesson {
  const _$_Lesson(
      {required this.title,
      required final List<Family> familySet,
      required final List<Species> speciesSet,
      this.passed = false})
      : _familySet = familySet,
        _speciesSet = speciesSet;

  factory _$_Lesson.fromJson(Map<String, dynamic> json) =>
      _$$_LessonFromJson(json);

  @override
  final String title;
  final List<Family> _familySet;
  @override
  List<Family> get familySet {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_familySet);
  }

  final List<Species> _speciesSet;
  @override
  List<Species> get speciesSet {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_speciesSet);
  }

  @override
  @JsonKey()
  final bool passed;

  @override
  String toString() {
    return 'Lesson(title: $title, familySet: $familySet, speciesSet: $speciesSet, passed: $passed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Lesson &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other._familySet, _familySet) &&
            const DeepCollectionEquality()
                .equals(other._speciesSet, _speciesSet) &&
            const DeepCollectionEquality().equals(other.passed, passed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(_familySet),
      const DeepCollectionEquality().hash(_speciesSet),
      const DeepCollectionEquality().hash(passed));

  @JsonKey(ignore: true)
  @override
  _$$_LessonCopyWith<_$_Lesson> get copyWith =>
      __$$_LessonCopyWithImpl<_$_Lesson>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonToJson(
      this,
    );
  }
}

abstract class _Lesson implements Lesson {
  const factory _Lesson(
      {required final String title,
      required final List<Family> familySet,
      required final List<Species> speciesSet,
      final bool passed}) = _$_Lesson;

  factory _Lesson.fromJson(Map<String, dynamic> json) = _$_Lesson.fromJson;

  @override
  String get title;
  @override
  List<Family> get familySet;
  @override
  List<Species> get speciesSet;
  @override
  bool get passed;
  @override
  @JsonKey(ignore: true)
  _$$_LessonCopyWith<_$_Lesson> get copyWith =>
      throw _privateConstructorUsedError;
}

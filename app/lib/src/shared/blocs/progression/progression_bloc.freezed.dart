// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'progression_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProgressionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProgressions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProgressions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProgressions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProgressions value) getProgressions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProgressions value)? getProgressions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProgressions value)? getProgressions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressionEventCopyWith<$Res> {
  factory $ProgressionEventCopyWith(
          ProgressionEvent value, $Res Function(ProgressionEvent) then) =
      _$ProgressionEventCopyWithImpl<$Res, ProgressionEvent>;
}

/// @nodoc
class _$ProgressionEventCopyWithImpl<$Res, $Val extends ProgressionEvent>
    implements $ProgressionEventCopyWith<$Res> {
  _$ProgressionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetProgressionsCopyWith<$Res> {
  factory _$$GetProgressionsCopyWith(
          _$GetProgressions value, $Res Function(_$GetProgressions) then) =
      __$$GetProgressionsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProgressionsCopyWithImpl<$Res>
    extends _$ProgressionEventCopyWithImpl<$Res, _$GetProgressions>
    implements _$$GetProgressionsCopyWith<$Res> {
  __$$GetProgressionsCopyWithImpl(
      _$GetProgressions _value, $Res Function(_$GetProgressions) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProgressions implements GetProgressions {
  const _$GetProgressions();

  @override
  String toString() {
    return 'ProgressionEvent.getProgressions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProgressions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getProgressions,
  }) {
    return getProgressions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getProgressions,
  }) {
    return getProgressions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getProgressions,
    required TResult orElse(),
  }) {
    if (getProgressions != null) {
      return getProgressions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetProgressions value) getProgressions,
  }) {
    return getProgressions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetProgressions value)? getProgressions,
  }) {
    return getProgressions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetProgressions value)? getProgressions,
    required TResult orElse(),
  }) {
    if (getProgressions != null) {
      return getProgressions(this);
    }
    return orElse();
  }
}

abstract class GetProgressions implements ProgressionEvent {
  const factory GetProgressions() = _$GetProgressions;
}

/// @nodoc
mixin _$ProgressionState {
  List<DriftLessonProgression>? get progressions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProgressionStateCopyWith<ProgressionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressionStateCopyWith<$Res> {
  factory $ProgressionStateCopyWith(
          ProgressionState value, $Res Function(ProgressionState) then) =
      _$ProgressionStateCopyWithImpl<$Res, ProgressionState>;
  @useResult
  $Res call({List<DriftLessonProgression>? progressions});
}

/// @nodoc
class _$ProgressionStateCopyWithImpl<$Res, $Val extends ProgressionState>
    implements $ProgressionStateCopyWith<$Res> {
  _$ProgressionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressions = freezed,
  }) {
    return _then(_value.copyWith(
      progressions: freezed == progressions
          ? _value.progressions
          : progressions // ignore: cast_nullable_to_non_nullable
              as List<DriftLessonProgression>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProgressionStateCopyWith<$Res>
    implements $ProgressionStateCopyWith<$Res> {
  factory _$$_ProgressionStateCopyWith(
          _$_ProgressionState value, $Res Function(_$_ProgressionState) then) =
      __$$_ProgressionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DriftLessonProgression>? progressions});
}

/// @nodoc
class __$$_ProgressionStateCopyWithImpl<$Res>
    extends _$ProgressionStateCopyWithImpl<$Res, _$_ProgressionState>
    implements _$$_ProgressionStateCopyWith<$Res> {
  __$$_ProgressionStateCopyWithImpl(
      _$_ProgressionState _value, $Res Function(_$_ProgressionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressions = freezed,
  }) {
    return _then(_$_ProgressionState(
      progressions: freezed == progressions
          ? _value._progressions
          : progressions // ignore: cast_nullable_to_non_nullable
              as List<DriftLessonProgression>?,
    ));
  }
}

/// @nodoc

class _$_ProgressionState implements _ProgressionState {
  const _$_ProgressionState(
      {final List<DriftLessonProgression>? progressions = null})
      : _progressions = progressions;

  final List<DriftLessonProgression>? _progressions;
  @override
  @JsonKey()
  List<DriftLessonProgression>? get progressions {
    final value = _progressions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProgressionState(progressions: $progressions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProgressionState &&
            const DeepCollectionEquality()
                .equals(other._progressions, _progressions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_progressions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProgressionStateCopyWith<_$_ProgressionState> get copyWith =>
      __$$_ProgressionStateCopyWithImpl<_$_ProgressionState>(this, _$identity);
}

abstract class _ProgressionState implements ProgressionState {
  const factory _ProgressionState(
      {final List<DriftLessonProgression>? progressions}) = _$_ProgressionState;

  @override
  List<DriftLessonProgression>? get progressions;
  @override
  @JsonKey(ignore: true)
  _$$_ProgressionStateCopyWith<_$_ProgressionState> get copyWith =>
      throw _privateConstructorUsedError;
}

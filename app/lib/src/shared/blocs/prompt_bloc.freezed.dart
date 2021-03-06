// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'prompt_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PromptEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextPrompt,
    required TResult Function(Family selectedFamily) getFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? nextPrompt,
    TResult Function(Family selectedFamily)? getFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextPrompt,
    TResult Function(Family selectedFamily)? getFeedback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextPrompt value) nextPrompt,
    required TResult Function(GetFeedback value) getFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NextPrompt value)? nextPrompt,
    TResult Function(GetFeedback value)? getFeedback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextPrompt value)? nextPrompt,
    TResult Function(GetFeedback value)? getFeedback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromptEventCopyWith<$Res> {
  factory $PromptEventCopyWith(
          PromptEvent value, $Res Function(PromptEvent) then) =
      _$PromptEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PromptEventCopyWithImpl<$Res> implements $PromptEventCopyWith<$Res> {
  _$PromptEventCopyWithImpl(this._value, this._then);

  final PromptEvent _value;
  // ignore: unused_field
  final $Res Function(PromptEvent) _then;
}

/// @nodoc
abstract class _$$NextPromptCopyWith<$Res> {
  factory _$$NextPromptCopyWith(
          _$NextPrompt value, $Res Function(_$NextPrompt) then) =
      __$$NextPromptCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextPromptCopyWithImpl<$Res> extends _$PromptEventCopyWithImpl<$Res>
    implements _$$NextPromptCopyWith<$Res> {
  __$$NextPromptCopyWithImpl(
      _$NextPrompt _value, $Res Function(_$NextPrompt) _then)
      : super(_value, (v) => _then(v as _$NextPrompt));

  @override
  _$NextPrompt get _value => super._value as _$NextPrompt;
}

/// @nodoc

class _$NextPrompt implements NextPrompt {
  const _$NextPrompt();

  @override
  String toString() {
    return 'PromptEvent.nextPrompt()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NextPrompt);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextPrompt,
    required TResult Function(Family selectedFamily) getFeedback,
  }) {
    return nextPrompt();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? nextPrompt,
    TResult Function(Family selectedFamily)? getFeedback,
  }) {
    return nextPrompt?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextPrompt,
    TResult Function(Family selectedFamily)? getFeedback,
    required TResult orElse(),
  }) {
    if (nextPrompt != null) {
      return nextPrompt();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextPrompt value) nextPrompt,
    required TResult Function(GetFeedback value) getFeedback,
  }) {
    return nextPrompt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NextPrompt value)? nextPrompt,
    TResult Function(GetFeedback value)? getFeedback,
  }) {
    return nextPrompt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextPrompt value)? nextPrompt,
    TResult Function(GetFeedback value)? getFeedback,
    required TResult orElse(),
  }) {
    if (nextPrompt != null) {
      return nextPrompt(this);
    }
    return orElse();
  }
}

abstract class NextPrompt implements PromptEvent {
  const factory NextPrompt() = _$NextPrompt;
}

/// @nodoc
abstract class _$$GetFeedbackCopyWith<$Res> {
  factory _$$GetFeedbackCopyWith(
          _$GetFeedback value, $Res Function(_$GetFeedback) then) =
      __$$GetFeedbackCopyWithImpl<$Res>;
  $Res call({Family selectedFamily});
}

/// @nodoc
class __$$GetFeedbackCopyWithImpl<$Res> extends _$PromptEventCopyWithImpl<$Res>
    implements _$$GetFeedbackCopyWith<$Res> {
  __$$GetFeedbackCopyWithImpl(
      _$GetFeedback _value, $Res Function(_$GetFeedback) _then)
      : super(_value, (v) => _then(v as _$GetFeedback));

  @override
  _$GetFeedback get _value => super._value as _$GetFeedback;

  @override
  $Res call({
    Object? selectedFamily = freezed,
  }) {
    return _then(_$GetFeedback(
      selectedFamily == freezed
          ? _value.selectedFamily
          : selectedFamily // ignore: cast_nullable_to_non_nullable
              as Family,
    ));
  }
}

/// @nodoc

class _$GetFeedback implements GetFeedback {
  const _$GetFeedback(this.selectedFamily);

  @override
  final Family selectedFamily;

  @override
  String toString() {
    return 'PromptEvent.getFeedback(selectedFamily: $selectedFamily)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFeedback &&
            const DeepCollectionEquality()
                .equals(other.selectedFamily, selectedFamily));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(selectedFamily));

  @JsonKey(ignore: true)
  @override
  _$$GetFeedbackCopyWith<_$GetFeedback> get copyWith =>
      __$$GetFeedbackCopyWithImpl<_$GetFeedback>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextPrompt,
    required TResult Function(Family selectedFamily) getFeedback,
  }) {
    return getFeedback(selectedFamily);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? nextPrompt,
    TResult Function(Family selectedFamily)? getFeedback,
  }) {
    return getFeedback?.call(selectedFamily);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextPrompt,
    TResult Function(Family selectedFamily)? getFeedback,
    required TResult orElse(),
  }) {
    if (getFeedback != null) {
      return getFeedback(selectedFamily);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NextPrompt value) nextPrompt,
    required TResult Function(GetFeedback value) getFeedback,
  }) {
    return getFeedback(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NextPrompt value)? nextPrompt,
    TResult Function(GetFeedback value)? getFeedback,
  }) {
    return getFeedback?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NextPrompt value)? nextPrompt,
    TResult Function(GetFeedback value)? getFeedback,
    required TResult orElse(),
  }) {
    if (getFeedback != null) {
      return getFeedback(this);
    }
    return orElse();
  }
}

abstract class GetFeedback implements PromptEvent {
  const factory GetFeedback(final Family selectedFamily) = _$GetFeedback;

  Family get selectedFamily => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$GetFeedbackCopyWith<_$GetFeedback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PromptState {
  Species? get promptSpecies => throw _privateConstructorUsedError;
  List<Family>? get familyOptions => throw _privateConstructorUsedError;
  bool? get correct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PromptStateCopyWith<PromptState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromptStateCopyWith<$Res> {
  factory $PromptStateCopyWith(
          PromptState value, $Res Function(PromptState) then) =
      _$PromptStateCopyWithImpl<$Res>;
  $Res call(
      {Species? promptSpecies, List<Family>? familyOptions, bool? correct});

  $SpeciesCopyWith<$Res>? get promptSpecies;
}

/// @nodoc
class _$PromptStateCopyWithImpl<$Res> implements $PromptStateCopyWith<$Res> {
  _$PromptStateCopyWithImpl(this._value, this._then);

  final PromptState _value;
  // ignore: unused_field
  final $Res Function(PromptState) _then;

  @override
  $Res call({
    Object? promptSpecies = freezed,
    Object? familyOptions = freezed,
    Object? correct = freezed,
  }) {
    return _then(_value.copyWith(
      promptSpecies: promptSpecies == freezed
          ? _value.promptSpecies
          : promptSpecies // ignore: cast_nullable_to_non_nullable
              as Species?,
      familyOptions: familyOptions == freezed
          ? _value.familyOptions
          : familyOptions // ignore: cast_nullable_to_non_nullable
              as List<Family>?,
      correct: correct == freezed
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $SpeciesCopyWith<$Res>? get promptSpecies {
    if (_value.promptSpecies == null) {
      return null;
    }

    return $SpeciesCopyWith<$Res>(_value.promptSpecies!, (value) {
      return _then(_value.copyWith(promptSpecies: value));
    });
  }
}

/// @nodoc
abstract class _$$_PromptStateCopyWith<$Res>
    implements $PromptStateCopyWith<$Res> {
  factory _$$_PromptStateCopyWith(
          _$_PromptState value, $Res Function(_$_PromptState) then) =
      __$$_PromptStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Species? promptSpecies, List<Family>? familyOptions, bool? correct});

  @override
  $SpeciesCopyWith<$Res>? get promptSpecies;
}

/// @nodoc
class __$$_PromptStateCopyWithImpl<$Res> extends _$PromptStateCopyWithImpl<$Res>
    implements _$$_PromptStateCopyWith<$Res> {
  __$$_PromptStateCopyWithImpl(
      _$_PromptState _value, $Res Function(_$_PromptState) _then)
      : super(_value, (v) => _then(v as _$_PromptState));

  @override
  _$_PromptState get _value => super._value as _$_PromptState;

  @override
  $Res call({
    Object? promptSpecies = freezed,
    Object? familyOptions = freezed,
    Object? correct = freezed,
  }) {
    return _then(_$_PromptState(
      promptSpecies: promptSpecies == freezed
          ? _value.promptSpecies
          : promptSpecies // ignore: cast_nullable_to_non_nullable
              as Species?,
      familyOptions: familyOptions == freezed
          ? _value._familyOptions
          : familyOptions // ignore: cast_nullable_to_non_nullable
              as List<Family>?,
      correct: correct == freezed
          ? _value.correct
          : correct // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_PromptState implements _PromptState {
  const _$_PromptState(
      {this.promptSpecies = null,
      final List<Family>? familyOptions = null,
      this.correct = null})
      : _familyOptions = familyOptions;

  @override
  @JsonKey()
  final Species? promptSpecies;
  final List<Family>? _familyOptions;
  @override
  @JsonKey()
  List<Family>? get familyOptions {
    final value = _familyOptions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final bool? correct;

  @override
  String toString() {
    return 'PromptState(promptSpecies: $promptSpecies, familyOptions: $familyOptions, correct: $correct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PromptState &&
            const DeepCollectionEquality()
                .equals(other.promptSpecies, promptSpecies) &&
            const DeepCollectionEquality()
                .equals(other._familyOptions, _familyOptions) &&
            const DeepCollectionEquality().equals(other.correct, correct));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(promptSpecies),
      const DeepCollectionEquality().hash(_familyOptions),
      const DeepCollectionEquality().hash(correct));

  @JsonKey(ignore: true)
  @override
  _$$_PromptStateCopyWith<_$_PromptState> get copyWith =>
      __$$_PromptStateCopyWithImpl<_$_PromptState>(this, _$identity);
}

abstract class _PromptState implements PromptState {
  const factory _PromptState(
      {final Species? promptSpecies,
      final List<Family>? familyOptions,
      final bool? correct}) = _$_PromptState;

  @override
  Species? get promptSpecies => throw _privateConstructorUsedError;
  @override
  List<Family>? get familyOptions => throw _privateConstructorUsedError;
  @override
  bool? get correct => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PromptStateCopyWith<_$_PromptState> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family_selection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FamilySelectionEvent {
  Family get family => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Family family) toggleFamily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Family family)? toggleFamily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Family family)? toggleFamily,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleFamily value) toggleFamily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleFamily value)? toggleFamily,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleFamily value)? toggleFamily,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FamilySelectionEventCopyWith<FamilySelectionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilySelectionEventCopyWith<$Res> {
  factory $FamilySelectionEventCopyWith(FamilySelectionEvent value,
          $Res Function(FamilySelectionEvent) then) =
      _$FamilySelectionEventCopyWithImpl<$Res, FamilySelectionEvent>;
  @useResult
  $Res call({Family family});
}

/// @nodoc
class _$FamilySelectionEventCopyWithImpl<$Res,
        $Val extends FamilySelectionEvent>
    implements $FamilySelectionEventCopyWith<$Res> {
  _$FamilySelectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? family = null,
  }) {
    return _then(_value.copyWith(
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Family,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ToggleFamilyCopyWith<$Res>
    implements $FamilySelectionEventCopyWith<$Res> {
  factory _$$ToggleFamilyCopyWith(
          _$ToggleFamily value, $Res Function(_$ToggleFamily) then) =
      __$$ToggleFamilyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Family family});
}

/// @nodoc
class __$$ToggleFamilyCopyWithImpl<$Res>
    extends _$FamilySelectionEventCopyWithImpl<$Res, _$ToggleFamily>
    implements _$$ToggleFamilyCopyWith<$Res> {
  __$$ToggleFamilyCopyWithImpl(
      _$ToggleFamily _value, $Res Function(_$ToggleFamily) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? family = null,
  }) {
    return _then(_$ToggleFamily(
      null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as Family,
    ));
  }
}

/// @nodoc

class _$ToggleFamily implements ToggleFamily {
  const _$ToggleFamily(this.family);

  @override
  final Family family;

  @override
  String toString() {
    return 'FamilySelectionEvent.toggleFamily(family: $family)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleFamily &&
            (identical(other.family, family) || other.family == family));
  }

  @override
  int get hashCode => Object.hash(runtimeType, family);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleFamilyCopyWith<_$ToggleFamily> get copyWith =>
      __$$ToggleFamilyCopyWithImpl<_$ToggleFamily>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Family family) toggleFamily,
  }) {
    return toggleFamily(family);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Family family)? toggleFamily,
  }) {
    return toggleFamily?.call(family);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Family family)? toggleFamily,
    required TResult orElse(),
  }) {
    if (toggleFamily != null) {
      return toggleFamily(family);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleFamily value) toggleFamily,
  }) {
    return toggleFamily(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleFamily value)? toggleFamily,
  }) {
    return toggleFamily?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleFamily value)? toggleFamily,
    required TResult orElse(),
  }) {
    if (toggleFamily != null) {
      return toggleFamily(this);
    }
    return orElse();
  }
}

abstract class ToggleFamily implements FamilySelectionEvent {
  const factory ToggleFamily(final Family family) = _$ToggleFamily;

  @override
  Family get family;
  @override
  @JsonKey(ignore: true)
  _$$ToggleFamilyCopyWith<_$ToggleFamily> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FamilySelectionState {
  List<Family> get selectedFamilies => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FamilySelectionStateCopyWith<FamilySelectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FamilySelectionStateCopyWith<$Res> {
  factory $FamilySelectionStateCopyWith(FamilySelectionState value,
          $Res Function(FamilySelectionState) then) =
      _$FamilySelectionStateCopyWithImpl<$Res, FamilySelectionState>;
  @useResult
  $Res call({List<Family> selectedFamilies});
}

/// @nodoc
class _$FamilySelectionStateCopyWithImpl<$Res,
        $Val extends FamilySelectionState>
    implements $FamilySelectionStateCopyWith<$Res> {
  _$FamilySelectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedFamilies = null,
  }) {
    return _then(_value.copyWith(
      selectedFamilies: null == selectedFamilies
          ? _value.selectedFamilies
          : selectedFamilies // ignore: cast_nullable_to_non_nullable
              as List<Family>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FamilySelectionStateCopyWith<$Res>
    implements $FamilySelectionStateCopyWith<$Res> {
  factory _$$_FamilySelectionStateCopyWith(_$_FamilySelectionState value,
          $Res Function(_$_FamilySelectionState) then) =
      __$$_FamilySelectionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Family> selectedFamilies});
}

/// @nodoc
class __$$_FamilySelectionStateCopyWithImpl<$Res>
    extends _$FamilySelectionStateCopyWithImpl<$Res, _$_FamilySelectionState>
    implements _$$_FamilySelectionStateCopyWith<$Res> {
  __$$_FamilySelectionStateCopyWithImpl(_$_FamilySelectionState _value,
      $Res Function(_$_FamilySelectionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedFamilies = null,
  }) {
    return _then(_$_FamilySelectionState(
      selectedFamilies: null == selectedFamilies
          ? _value._selectedFamilies
          : selectedFamilies // ignore: cast_nullable_to_non_nullable
              as List<Family>,
    ));
  }
}

/// @nodoc

class _$_FamilySelectionState implements _FamilySelectionState {
  const _$_FamilySelectionState(
      {final List<Family> selectedFamilies = const []})
      : _selectedFamilies = selectedFamilies;

  final List<Family> _selectedFamilies;
  @override
  @JsonKey()
  List<Family> get selectedFamilies {
    if (_selectedFamilies is EqualUnmodifiableListView)
      return _selectedFamilies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedFamilies);
  }

  @override
  String toString() {
    return 'FamilySelectionState(selectedFamilies: $selectedFamilies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FamilySelectionState &&
            const DeepCollectionEquality()
                .equals(other._selectedFamilies, _selectedFamilies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_selectedFamilies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FamilySelectionStateCopyWith<_$_FamilySelectionState> get copyWith =>
      __$$_FamilySelectionStateCopyWithImpl<_$_FamilySelectionState>(
          this, _$identity);
}

abstract class _FamilySelectionState implements FamilySelectionState {
  const factory _FamilySelectionState({final List<Family> selectedFamilies}) =
      _$_FamilySelectionState;

  @override
  List<Family> get selectedFamilies;
  @override
  @JsonKey(ignore: true)
  _$$_FamilySelectionStateCopyWith<_$_FamilySelectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

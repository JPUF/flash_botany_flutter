part of 'progression_bloc.dart';

@Freezed()
class ProgressionState with _$ProgressionState {
  const factory ProgressionState({
    @Default(null) List<LessonProgression>? progressions,
  }) = _ProgressionState;

  factory ProgressionState.initial() => const ProgressionState();
}
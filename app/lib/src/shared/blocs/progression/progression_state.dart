part of 'progression_bloc.dart';

@Freezed()
class ProgressionState with _$ProgressionState {
  const factory ProgressionState({
    @Default(null) List<DriftLessonProgression>? progressions,
  }) = _ProgressionState;

  factory ProgressionState.initial() => const ProgressionState();
}
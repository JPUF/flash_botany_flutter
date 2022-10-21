part of 'prompt_bloc.dart';

@Freezed()
class PromptState with _$PromptState {
  const factory PromptState({
    @Default(null) Species? promptSpecies,
    @Default(null) List<Family>? familyOptions,
    @Default(null) Lesson? lesson,
    @Default(null) bool? correct,
    @Default(0) int progression,
  }) = _PromptState;

  factory PromptState.initial() => const PromptState();
}

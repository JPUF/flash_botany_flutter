part of 'prompt_bloc.dart';

@Freezed()
class PromptState with _$PromptState {
  const factory PromptState({
    @Default(null) Species? promptSpecies,
  }) = _PromptState;

  factory PromptState.initial() => const PromptState();
}

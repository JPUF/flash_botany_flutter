part of 'prompt_bloc.dart';

@Freezed()
class PromptEvent with _$PromptEvent {
  const factory PromptEvent.nextPrompt() = NextPrompt;
  const factory PromptEvent.getFeedback(Family selectedFamily) = GetFeedback;
}
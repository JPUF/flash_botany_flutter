part of 'prompt_bloc.dart';

@Freezed()
class PromptEvent with _$PromptEvent {
  const factory PromptEvent.nextPrompt(Lesson lesson, Species? prevSpecies) = NextPrompt;
  const factory PromptEvent.getFeedback(Family selectedFamily) = GetFeedback;
}
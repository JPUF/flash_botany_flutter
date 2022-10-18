import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../data/species_data.dart';
import '../models/family.dart';
import '../models/species.dart';

part 'prompt_bloc.freezed.dart';
part 'prompt_event.dart';
part 'prompt_state.dart';

class PromptBloc extends Bloc<PromptEvent, PromptState> {
  PromptBloc() : super(PromptState.initial()) {
    on<PromptEvent>(
      (event, emit) => event.map(
        nextPrompt: (event) => _nextPrompt(event, emit),
        getFeedback: (event) => _getFeedback(event, emit),
      ),
    );
  }

  void _nextPrompt(NextPrompt event, Emitter<PromptState> emit) {
    final nextSpecies = _getNextSpecies(event.quizId, event.prevSpecies);
    emit(state.copyWith(
      quizId: event.quizId,
      promptSpecies: nextSpecies,
      familyOptions: _getFamilyOptions(event.quizId, nextSpecies.family),
    ));
  }

  void _getFeedback(GetFeedback event, Emitter<PromptState> emit) {
    final family = event.selectedFamily;
    final correct = family == state.promptSpecies?.family;
    emit(state.copyWith(correct: correct));
  }

  Species _getNextSpecies(QuizId quizId, Species? prevSpecies) {
    List<Species> localSpecies = quizId.speciesSet.toList();
    if (prevSpecies != null) {
      localSpecies.remove(prevSpecies);
    }
    return localSpecies[Random().nextInt(localSpecies.length)];
  }

  List<Family> _getFamilyOptions(QuizId quizId, Family correctFamily) {
    List<Family> allFamilies = quizId.familySet.toList();
    allFamilies.remove(correctFamily);
    allFamilies.shuffle();
    List<Family> remainingFamilies = allFamilies.take(min(quizId.familySet.length, 3)).toList();
    remainingFamilies.add(correctFamily);
    remainingFamilies.shuffle();

    return remainingFamilies;
  }
}

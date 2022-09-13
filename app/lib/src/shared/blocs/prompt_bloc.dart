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
    final nextSpecies = _getNextSpecies(event.prevSpecies);
    emit(state.copyWith(
      promptSpecies: nextSpecies,
      familyOptions: _getFamilyOptions(nextSpecies.family),
    ));
  }

  void _getFeedback(GetFeedback event, Emitter<PromptState> emit) {
    final family = event.selectedFamily;
    final correct = family == state.promptSpecies?.family;
    emit(state.copyWith(correct: correct));
  }

  Species _getNextSpecies(Species? prevSpecies) {
    List<Species> localAllSpecies = SpeciesData.allSpecies.toList();
    if (prevSpecies != null) {
      localAllSpecies.remove(prevSpecies);
    }
    return localAllSpecies[Random().nextInt(localAllSpecies.length)];
  }

  List<Family> _getFamilyOptions(Family correctFamily) {
    final newOptions = <Family>[];
    final r = Random();
    List<Family> remainingFamilies = Family.values.toList();
    remainingFamilies.remove(correctFamily);
    remainingFamilies.shuffle();
    final correctIndex = r.nextInt(4);
    for (int i = 0; i < 4; i++) {
      final isCorrect = i == correctIndex;
      newOptions.add(isCorrect ? correctFamily : remainingFamilies[i]);
    }
    return newOptions;
  }
}

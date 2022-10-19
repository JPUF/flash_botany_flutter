import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/family.dart';
import '../models/lesson.dart';
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
    final nextSpecies = _getNextSpecies(event.lesson, event.prevSpecies);
    emit(state.copyWith(
      lesson: event.lesson,
      promptSpecies: nextSpecies,
      familyOptions: _getFamilyOptions(event.lesson, nextSpecies.family),
    ));
  }

  void _getFeedback(GetFeedback event, Emitter<PromptState> emit) {
    final family = event.selectedFamily;
    final correct = family == state.promptSpecies?.family;
    emit(state.copyWith(correct: correct));
  }

  Species _getNextSpecies(Lesson lesson, Species? prevSpecies) {
    List<Species> localSpecies = lesson.speciesSet.toList();
    if (prevSpecies != null) {
      localSpecies.remove(prevSpecies);
    }
    return localSpecies[Random().nextInt(localSpecies.length)];
  }

  List<Family> _getFamilyOptions(Lesson lesson, Family correctFamily) {
    List<Family> allFamilies = lesson.familySet.toList();
    allFamilies.remove(correctFamily);
    allFamilies.shuffle();
    List<Family> remainingFamilies =
        allFamilies.take(min(lesson.familySet.length, 3)).toList();
    remainingFamilies.add(correctFamily);
    remainingFamilies.shuffle();

    return remainingFamilies;
  }
}

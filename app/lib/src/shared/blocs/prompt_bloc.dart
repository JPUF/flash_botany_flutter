import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../injection.dart';
import '../models/family.dart';
import '../models/lesson.dart';
import '../models/species.dart';
import '../repositories/lesson_repository.dart';

part 'prompt_bloc.freezed.dart';
part 'prompt_event.dart';
part 'prompt_state.dart';

class PromptBloc extends Bloc<PromptEvent, PromptState> {
  final LessonRepository _lessonRepo = getIt<LessonRepository>();

  PromptBloc() : super(PromptState.initial()) {
    on<PromptEvent>(
      (event, emit) => event.map(
        nextPrompt: (event) => _nextPrompt(event, emit),
        getFeedback: (event) => _getFeedback(event, emit),
      ),
    );
  }

  _nextPrompt(NextPrompt event, Emitter<PromptState> emit) async {
    final nextSpecies = _getNextSpecies(event.lesson, event.prevSpecies);
    final progression = await _lessonRepo.getProgression(event.lesson) ?? 0;
    emit(state.copyWith(
      lesson: event.lesson,
      promptSpecies: nextSpecies,
      familyOptions: _getFamilyOptions(event.lesson, nextSpecies.family),
      progression: progression,
    ));
  }

  _getFeedback(GetFeedback event, Emitter<PromptState> emit) async {
    final family = event.selectedFamily;
    final correct = family == state.promptSpecies?.family;
    if (correct) {
      await _lessonRepo.incrementLessonProgression(event.lesson);
    }
    final progression = await _lessonRepo.getProgression(event.lesson) ?? 0;
    emit(state.copyWith(
      correct: correct,
      lesson: event.lesson,
      progression: progression,
    ));
  }

  Species _getNextSpecies(Lesson lesson, Species? prevSpecies) {
    List<Species> localSpecies = lesson.speciesSet.toList();
    if (prevSpecies != null) {
      localSpecies.remove(prevSpecies);
    }
    return localSpecies[Random().nextInt(localSpecies.length)];
  }

  List<Family> _getFamilyOptions(Lesson lesson, Family correctFamily) {
    if (lesson.familySet.length <= 4) {
      return lesson.familySet;
    }
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

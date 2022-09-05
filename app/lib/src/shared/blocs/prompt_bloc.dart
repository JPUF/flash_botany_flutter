import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/family.dart';
import '../models/species.dart';

part 'prompt_bloc.freezed.dart';
part 'prompt_event.dart';
part 'prompt_state.dart';

class PromptBloc extends Bloc<PromptEvent, PromptState> {
  int _currentIndex = 0;

  static const _baseImageUrl = 'https://f003.backblazeb2.com/file/prompt-images/';
  final _speciesList = [
    const Species(
      latinName: 'Bellis perennis',
      commonName: 'Daisy',
      family: Family.asteraceae,
      imageUrls: [
        _baseImageUrl + 'bellis_perennis_1.jpg',
        _baseImageUrl + 'bellis_perennis_2.jpg',
        _baseImageUrl + 'bellis_perennis_3.jpg',
      ],
    ),
    const Species(
      latinName: 'Jacobaea vulgaris',
      commonName: 'Ragwort',
      family: Family.asteraceae,
      imageUrls: [
        _baseImageUrl + 'jacobaea_vulgaris_1.jpg',
        _baseImageUrl + 'jacobaea_vulgaris_2.jpg',
        _baseImageUrl + 'jacobaea_vulgaris_3.jpg',
      ],
    ),
    const Species(
      latinName: 'Cardamine pratensis',
      commonName: 'Cuckooflower',
      family: Family.brassicaceae,
      imageUrls: [
        _baseImageUrl + 'cardamine_pratensis_1.jpg',
        _baseImageUrl + 'cardamine_pratensis_2.jpg',
        _baseImageUrl + 'cardamine_pratensis_3.jpg',
      ],
    ),
  ];

  PromptBloc() : super(PromptState.initial()) {
    on<PromptEvent>(
      (event, emit) => event.map(
        nextPrompt: (event) => _nextPrompt(event, emit),
        getFeedback: (event) => _getFeedback(event, emit),
      ),
    );
  }

  void _nextPrompt(NextPrompt event, Emitter<PromptState> emit) {
    final nextSpecies = _getNextSpecies();
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

  Species _getNextSpecies() {
    final species = _speciesList[_currentIndex++];
    _currentIndex %= _speciesList.length;
    return species;
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

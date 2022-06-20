import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../models/family.dart';
import '../models/species.dart';

part 'prompt_bloc.freezed.dart';
part 'prompt_event.dart';
part 'prompt_state.dart';

class PromptBloc extends Bloc<PromptEvent, PromptState> {
  int _currentIndex = 0;
  final _speciesList = const [
    Species(
      latinName: 'Bellis perennis',
      commonName: 'Daisy',
      family: Family.asteraceae,
      imageUrls: [
        'https://c.pxhere.com/photos/1b/a0/bellis_perennis_english_daisy_common_daisy_lawn_daisy_woundwort_bruisewort_flora_wildflower-870762.jpg!d',
        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Bellis_perennis_twin_Macro_1.jpg/512px-Bellis_perennis_twin_Macro_1.jpg',
        'https://pictures.snsb.info/BBGschimmitatcoll/web/SCHIM-4-169/SCHIM-4-169-5-2_20050131_173112.jpg',
      ],
    ),
    Species(
      latinName: 'Jacobaea vulgaris',
      commonName: 'Ragwort',
      family: Family.asteraceae,
      imageUrls: [
        'https://www.publicdomainpictures.net/pictures/320000/velka/jakobskreuzkraut-giftig-blume-blute-1584435855TkZ.jpg',
        'https://upload.wikimedia.org/wikipedia/commons/b/bd/Illustration_Senecio_jacobaea.jpg',
        'https://live.staticflickr.com/4083/5031491295_97063acda1_b.jpg',
      ],
    )
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
    emit(state.copyWith(promptSpecies: _getNextSpecies()));
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
}

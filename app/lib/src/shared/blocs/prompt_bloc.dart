import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
      ),
    );
  }

  void _nextPrompt(NextPrompt event, Emitter<PromptState> emit) {
    emit(state.copyWith(promptSpecies: _getNextSpecies()));
  }

  Species _getNextSpecies() {
    return const Species(
      latinName: 'Bellis perennis',
      commonName: 'Daisy',
      family: Family.asteraceae,
      imageUrls: [
        'https://c.pxhere.com/photos/1b/a0/bellis_perennis_english_daisy_common_daisy_lawn_daisy_woundwort_bruisewort_flora_wildflower-870762.jpg!d',
        'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Bellis_perennis_twin_Macro_1.jpg/512px-Bellis_perennis_twin_Macro_1.jpg',
        'https://pictures.snsb.info/BBGschimmitatcoll/web/SCHIM-4-169/SCHIM-4-169-5-2_20050131_173112.jpg',
      ],
    );
  }
}

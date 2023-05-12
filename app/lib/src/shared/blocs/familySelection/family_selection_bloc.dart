import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/family.dart';

part 'family_selection_bloc.freezed.dart';
part 'family_selection_event.dart';
part 'family_selection_state.dart';

class FamilySelectionBloc
    extends Bloc<FamilySelectionEvent, FamilySelectionState> {
  FamilySelectionBloc() : super(FamilySelectionState.initial()) {
    on<FamilySelectionEvent>(
      (event, emit) => event.map(
        toggleFamily: (event) => _toggleFamily(event, emit),
        clearSelection: (_) => emit(FamilySelectionState.initial()),
      ),
    );
  }

  _toggleFamily(ToggleFamily event, Emitter<FamilySelectionState> emit) {
    final families = List<Family>.from(state.selectedFamilies);
    if (families.contains(event.family)) {
      families.remove(event.family);
      emit(FamilySelectionState(selectedFamilies: families));
    } else {
      families.add(event.family);
      emit(FamilySelectionState(selectedFamilies: families));
    }
  }
}

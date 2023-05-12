part of 'family_selection_bloc.dart';

@Freezed()
class FamilySelectionState with _$FamilySelectionState {
  const factory FamilySelectionState({
    @Default([]) List<Family> selectedFamilies,
  }) = _FamilySelectionState;

  factory FamilySelectionState.initial() => const FamilySelectionState();
}

extension FamilySelectionRequirement on FamilySelectionState {
  bool get canProgress => selectedFamilies.length >= 2;
}
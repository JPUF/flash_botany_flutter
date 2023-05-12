part of 'family_selection_bloc.dart';

@Freezed()
class FamilySelectionEvent with _$FamilySelectionEvent {
  const factory FamilySelectionEvent.toggleFamily(Family family) = ToggleFamily;
}

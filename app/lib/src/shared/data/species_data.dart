import '../models/species.dart';
import 'asteraceae_data.dart';
import 'brassicaceae_data.dart';

class SpeciesData {
  static const baseImageUrl =
      'https://f003.backblazeb2.com/file/prompt-images/';

  static const List<Species> allSpecies = [
    ...AsteraceaeData.speciesList,
    ...BrassicaceaeData.speciesList
  ];
}

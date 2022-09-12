import '../models/species.dart';
import 'families/apiaceae_data.dart';
import 'families/asteraceae_data.dart';
import 'families/boraginaceae_data.dart';
import 'families/brassicaceae_data.dart';

class SpeciesData {
  static const baseImageUrl =
      'https://f003.backblazeb2.com/file/prompt-images/';

  static final List<Species> allSpecies = [
    // ...AsteraceaeData.speciesList,
    // ...BrassicaceaeData.speciesList,
    // ...ApiaceaeData.speciesList,
    ...BoraginaceaeData.speciesList,
  ];
}

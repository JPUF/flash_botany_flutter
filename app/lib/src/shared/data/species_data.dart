import '../models/family.dart';
import '../models/species.dart';
import 'families/apiaceae_data.dart';
import 'families/asteraceae_data.dart';
import 'families/boraginaceae_data.dart';
import 'families/brassicaceae_data.dart';
import 'families/caryophyllaceae_data.dart';
import 'families/fabaceae_data.dart';
import 'families/lamiaceae_data.dart';
import 'families/rosaceae_data.dart';

class SpeciesData {
  static const _allowCORSEndPoint = 'https://api.allorigins.win/raw?url=';
  static const baseImageUrl =
      _allowCORSEndPoint + 'https://f003.backblazeb2.com/file/prompt-images/';

  static const List<Species> allSpecies = [
    ...AsteraceaeData.speciesList,
    ...BrassicaceaeData.speciesList,
    ...ApiaceaeData.speciesList,
    ...BoraginaceaeData.speciesList,
    ...CaryophyllaceaeData.speciesList,
    ...FabaceaeData.speciesList,
    ...LamiaceaeData.speciesList,
    ...RosaceaeData.speciesList,
  ];

  static const List<Species> asteraceaeRosaceae = [
    ...AsteraceaeData.speciesList,
    ...RosaceaeData.speciesList,
  ];

  static const List<Species> brassicaceaeLamiaceae = [
    ...BrassicaceaeData.speciesList,
    ...LamiaceaeData.speciesList,
  ];
}

enum QuizId {
  all(Family.values, SpeciesData.allSpecies),
  asteraceaeRosaceae(
    [Family.asteraceae, Family.rosaceae],
    SpeciesData.asteraceaeRosaceae,
  ),
  brassicaceaeLamiaceae(
    [Family.brassicaceae, Family.lamiaceae],
    SpeciesData.brassicaceaeLamiaceae,
  );

  final List<Family> familySet;
  final List<Species> speciesSet;

  const QuizId(this.familySet, this.speciesSet);
}

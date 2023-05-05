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

  static const List<Species> apiaceaeCaryophyllaceae = [
    ...ApiaceaeData.speciesList,
    ...CaryophyllaceaeData.speciesList,
  ];

  static const List<Species> boraginaceaeFabaceae = [
    ...BoraginaceaeData.speciesList,
    ...FabaceaeData.speciesList,
  ];
}

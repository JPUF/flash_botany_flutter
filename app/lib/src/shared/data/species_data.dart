import '../models/family.dart';
import '../models/species.dart';
import 'families/apiaceae_data.dart';
import 'families/asteraceae_data.dart';
import 'families/boraginaceae_data.dart';
import 'families/brassicaceae_data.dart';
import 'families/caryophyllaceae_data.dart';
import 'families/ericaceae_data.dart';
import 'families/euphorbiaceae_data.dart';
import 'families/fabaceae_data.dart';
import 'families/geraniaceae_data.dart';
import 'families/lamiaceae_data.dart';
import 'families/malvaceae_data.dart';
import 'families/onagraceae_data.dart';
import 'families/orchidaceae_data.dart';
import 'families/polygonaceae_data.dart';
import 'families/ranunculaceae_data.dart';
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
    ...RanunculaceaeData.speciesList,
    ...OrchidaceaeData.speciesList,
    ...GeraniaceaeData.speciesList,
    ...PolygonaceaeData.speciesList,
    ...OnagraceaeData.speciesList,
    ...EuphorbiaceaeData.speciesList,
    ...MalvaceaeData.speciesList,
    ...EricaceaeData.speciesList,
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

  static const List<Species> ranunculaceaeOrchidaceae = [
    ...RanunculaceaeData.speciesList,
    ...OrchidaceaeData.speciesList,
  ];

  static const List<Species> geraniaceaePolygonaceae = [
    ...GeraniaceaeData.speciesList,
    ...PolygonaceaeData.speciesList,
  ];

  static const List<Species> onagraceaeEuphorbiaceae = [
    ...OnagraceaeData.speciesList,
    ...EuphorbiaceaeData.speciesList,
  ];
}

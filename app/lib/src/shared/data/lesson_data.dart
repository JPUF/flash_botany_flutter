import '../models/family.dart';
import '../models/lesson.dart';
import '../strings.dart';
import 'species_data.dart';

class LessonData {
  static const maxProgression = 5;

  static const allFamiliesId = 'allFamilies';
  static const asteraceaeRosaceaeId = 'asteraceaeRosaceae';
  static const brassicaceaeLamiaceaeId = 'brassicaceaeLamiaceae';
  static const apiaceaeCaryophyllaceaeId = 'apiaceaeCaryophyllaceae';
  static const boraginaceaeFabaceaeId = 'boraginaceaeFabaceae';
  static const ranunculaceaeOrchidaceaeId = 'ranunculaceaeOrchidaceae';

  static const List<Lesson> lessons = [
    Lesson(
        id: allFamiliesId,
        title: Strings.allLessonCta,
        familySet: Family.values,
        speciesSet: SpeciesData.allSpecies,
        indefinite: true),
    Lesson(
      id: asteraceaeRosaceaeId,
      title: Strings.lessonAsteraceaeRosaceae,
      familySet: [Family.asteraceae, Family.rosaceae],
      speciesSet: SpeciesData.asteraceaeRosaceae,
    ),
    Lesson(
      id: brassicaceaeLamiaceaeId,
      title: Strings.lessonBrassicaceaeLamiaceae,
      familySet: [Family.brassicaceae, Family.lamiaceae],
      speciesSet: SpeciesData.brassicaceaeLamiaceae,
    ),
    Lesson(
      id: apiaceaeCaryophyllaceaeId,
      title: Strings.lessonApiaceaeCaryophyllaceae,
      familySet: [Family.apiaceae, Family.caryophyllaceae],
      speciesSet: SpeciesData.apiaceaeCaryophyllaceae,
    ),
    Lesson(
      id: boraginaceaeFabaceaeId,
      title: Strings.lessonBoraginaceaeFabaceae,
      familySet: [Family.boraginaceae, Family.fabaceae],
      speciesSet: SpeciesData.boraginaceaeFabaceae,
    ),
    Lesson(
        id: ranunculaceaeOrchidaceaeId,
        title: Strings.lessonRanunculaceaeOrchidaceae,
        familySet: [Family.ranunculaceae, Family.orchidaceae],
        speciesSet: SpeciesData.ranunculaceaeOrchidaceae),
    //Probably need to increment DB 'version' when this list is augmented.
    // (if app has been released, otherwise just reinstall app on device)
  ];
}

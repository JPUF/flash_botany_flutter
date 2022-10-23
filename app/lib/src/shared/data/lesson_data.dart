import '../models/family.dart';
import '../models/lesson.dart';
import '../strings.dart';
import 'species_data.dart';

class LessonData {
  static const maxProgression = 5;

  static const allFamiliesId = 'allFamilies';
  static const asteraceaeRosaceaeId = 'asteraceaeRosaceae';
  static const brassicaceaeLamiaceaeId = 'brassicaceaeLamiaceae';

  static const List<Lesson> lessons = [
    Lesson(
      id: allFamiliesId,
      title: Strings.heroCta,
      familySet: Family.values,
      speciesSet: SpeciesData.allSpecies,
      indefinite: true
    ),
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
    //Probably need to increment DB 'version' when this list is augmented.
    // (if app has been released, otherwise just reinstall app on device)
  ];
}

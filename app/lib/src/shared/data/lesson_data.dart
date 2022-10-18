import '../models/family.dart';
import '../models/lesson.dart';
import '../strings.dart';
import 'species_data.dart';

class LessonData {
  static final List<Lesson> lessons = [
    Lesson(
      title: Strings.lessonAsteraceaeRosaceae,
      familySet: [Family.asteraceae, Family.rosaceae],
      speciesSet: SpeciesData.asteraceaeRosaceae,
    ),
    Lesson(
      title: Strings.lessonBrassicaceaeLamiaceae,
      familySet: [Family.brassicaceae, Family.lamiaceae],
      speciesSet: SpeciesData.brassicaceaeLamiaceae,
    ),
  ];
}

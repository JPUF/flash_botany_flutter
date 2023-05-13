import '../models/family.dart';
import '../models/lesson.dart';
import '../strings.dart';

class LessonData {
  static const maxProgression = 5;

  static const List<Lesson> lessons = [
    Lesson(
      title: Strings.lessonAsteraceaeRosaceae,
      familySet: [Family.asteraceae, Family.rosaceae],
    ),
    Lesson(
      title: Strings.lessonBrassicaceaeLamiaceae,
      familySet: [Family.brassicaceae, Family.lamiaceae],
    ),
    Lesson(
      title: Strings.lessonApiaceaeCaryophyllaceae,
      familySet: [Family.apiaceae, Family.caryophyllaceae],
    ),
    Lesson(
      title: Strings.lessonBoraginaceaeFabaceae,
      familySet: [Family.boraginaceae, Family.fabaceae],
    ),
    Lesson(
        title: Strings.lessonRanunculaceaeOrchidaceae,
        familySet: [Family.ranunculaceae, Family.orchidaceae]),
    Lesson(
        title: Strings.lessonGeraniaceaePolygonaceae,
        familySet: [Family.geraniaceae, Family.polygonaceae]),
    Lesson(
        title: Strings.lessonOnagraceaeEuphorbiaceae,
        familySet: [Family.onagraceae, Family.euphorbiaceae]),
    Lesson(
        title: Strings.lessonMalvaceaeEricaceae,
        familySet: [Family.malvaceae, Family.ericaceae]),
    //Probably need to increment DB 'version' when this list is augmented.
    // (if app has been released, otherwise just reinstall app on device)
  ];
}

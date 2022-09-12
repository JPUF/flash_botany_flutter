import '../models/attributed_url.dart';
import '../models/family.dart';
import '../models/species.dart';
import 'species_data.dart';

class BrassicaceaeData {
  static const _base = SpeciesData.baseImageUrl;
  static final speciesList = [
    const Species(
      latinName: 'Cardamine pratensis',
      commonName: 'Cuckooflower',
      family: Family.brassicaceae,
      images: [
        AttributedUrl(_base + 'cardamine_pratensis_1.jpg', '© philippe_geniez (CC-BY-NC)'),
        AttributedUrl(_base + 'cardamine_pratensis_2.jpg' , '© philippe_geniez (CC-BY-NC)'),
      ],
    ),
    const Species(
      latinName: 'Allilaria petiolata',
      commonName: 'Garlic Mustard',
      family: Family.brassicaceae,
      images: [
        AttributedUrl(_base + 'allilaria_petiolata_1.jpg', '© Peter Stimmler (CC-BY-NC)'),
        AttributedUrl(_base + 'allilaria_petiolata_2.jpg', '© philippe_geniez (CC-BY-NC)'),
        AttributedUrl(_base + 'allilaria_petiolata_3.jpg', '© Сергей (CC-BY-NC)'),
      ],
    ),
  ];
}

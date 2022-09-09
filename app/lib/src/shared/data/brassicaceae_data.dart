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
        AttributedUrl(_base + 'cardamine_pratensis_1.jpg'),
        AttributedUrl(_base + 'cardamine_pratensis_2.jpg'),
        AttributedUrl(_base + 'cardamine_pratensis_3.jpg'),
      ],
    )
  ];
}

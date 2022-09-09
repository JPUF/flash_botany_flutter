import '../models/attributed_url.dart';
import '../models/family.dart';
import '../models/species.dart';
import 'species_data.dart';

class BrassicaceaeData {
  static const base = SpeciesData.baseImageUrl;
  static final speciesList = [
    const Species(
      latinName: 'Cardamine pratensis',
      commonName: 'Cuckooflower',
      family: Family.brassicaceae,
      images: [
        AttributedUrl(base + 'cardamine_pratensis_1.jpg'),
        AttributedUrl(base + 'cardamine_pratensis_2.jpg'),
        AttributedUrl(base + 'cardamine_pratensis_3.jpg'),
      ],
    )
  ];
}

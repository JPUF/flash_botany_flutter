import '../models/family.dart';
import '../models/species.dart';
import 'species_data.dart';

class BrassicaceaeData {
  static const speciesList = [
    Species(
      latinName: 'Cardamine pratensis',
      commonName: 'Cuckooflower',
      family: Family.brassicaceae,
      imageUrls: [
        SpeciesData.baseImageUrl + 'cardamine_pratensis_1.jpg',
        SpeciesData.baseImageUrl + 'cardamine_pratensis_2.jpg',
        SpeciesData.baseImageUrl + 'cardamine_pratensis_3.jpg',
      ],
    )
  ];
}

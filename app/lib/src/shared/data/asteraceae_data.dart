import '../models/family.dart';
import '../models/species.dart';
import 'species_data.dart';

class AsteraceaeData {
  static const speciesList = [
    Species(
      latinName: 'Bellis perennis',
      commonName: 'Daisy',
      family: Family.asteraceae,
      imageUrls: [
        SpeciesData.baseImageUrl + 'bellis_perennis_1.jpg',
        SpeciesData.baseImageUrl + 'bellis_perennis_2.jpg',
        SpeciesData.baseImageUrl + 'bellis_perennis_3.jpg',
      ],
    ),
    Species(
      latinName: 'Jacobaea vulgaris',
      commonName: 'Ragwort',
      family: Family.asteraceae,
      imageUrls: [
        SpeciesData.baseImageUrl + 'jacobaea_vulgaris_1.jpg',
        SpeciesData.baseImageUrl + 'jacobaea_vulgaris_2.jpg',
        SpeciesData.baseImageUrl + 'jacobaea_vulgaris_3.jpg',
      ],
    )
  ];
}

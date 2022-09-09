import '../models/attributed_url.dart';
import '../models/family.dart';
import '../models/species.dart';
import 'species_data.dart';

class AsteraceaeData {
  static const base = SpeciesData.baseImageUrl;
  static const speciesList = [
    Species(
      latinName: 'Bellis perennis',
      commonName: 'Daisy',
      family: Family.asteraceae,
      images: [
        AttributedUrl(base + 'bellis_perennis_1.jpg', 'joe bloggs'),
        AttributedUrl(base + 'bellis_perennis_2.jpg'),
        AttributedUrl(base + 'bellis_perennis_3.jpg', 'anthea turner'),
      ],
    ),
    Species(
      latinName: 'Jacobaea vulgaris',
      commonName: 'Ragwort',
      family: Family.asteraceae,
      images: [
        AttributedUrl(base + 'jacobaea_vulgaris_1.jpg', 'David Dimbleby'),
        AttributedUrl(base + 'jacobaea_vulgaris_2.jpg', 'Fred Dibnah'),
        AttributedUrl(base + 'jacobaea_vulgaris_3.jpg', 'Blind Sided Billy Silent'),
      ],
    )
  ];
}

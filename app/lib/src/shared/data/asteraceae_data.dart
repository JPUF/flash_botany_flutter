import '../models/attributed_url.dart';
import '../models/family.dart';
import '../models/species.dart';
import 'species_data.dart';

class AsteraceaeData {
  static const _base = SpeciesData.baseImageUrl;
  static const speciesList = [
    Species(
      latinName: 'Bellis perennis',
      commonName: 'Daisy',
      family: Family.asteraceae,
      images: [
        AttributedUrl(_base + 'bellis_perennis_1.jpg', 'Jürgen Schimmitat, bayernflora.de'),
        AttributedUrl(_base + 'bellis_perennis_2.jpg', 'Jürgen Schimmitat, bayernflora.de'),
        AttributedUrl(_base + 'bellis_perennis_3.jpg', 'Paulo Ventura Araújo, flora-on.pt'),
      ],
    ),
    Species(
      latinName: 'Jacobaea vulgaris',
      commonName: 'Ragwort',
      family: Family.asteraceae,
      images: [
        AttributedUrl(_base + 'jacobaea_vulgaris_1.jpg', 'commons.wikimedia.org/wiki/User:Strobilomyces'),
        AttributedUrl(_base + 'jacobaea_vulgaris_2.jpg'),
        AttributedUrl(_base + 'jacobaea_vulgaris_3.jpg', 'commons.wikimedia.org/wiki/User:Julia_W'),
      ],
    )
  ];
}

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
    ),
    Species(
      latinName: 'Cichorium intybus',
      commonName: 'Chicory',
      family: Family.asteraceae,
      images: [
        AttributedUrl(_base + 'cichorium_intybus_1.jpg', '© Anthony Zammit (CC-BY-NC)'),
        AttributedUrl(_base + 'cichorium_intybus_2.jpg', '© igor_olshanskyi (CC-BY-NC)'),
        AttributedUrl(_base + 'cichorium_intybus_3.jpg', '© nhunterjr (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Tussilago farfara',
      commonName: 'Colt’s Foot',
      family: Family.asteraceae,
      images: [
        AttributedUrl(_base + 'tussilago_farfara_1.jpg', '© lydwin, some rights reserved (CC-BY-NC)'),
        AttributedUrl(_base + 'tussilago_farfara_2.jpg', '© eliegaget (CC-BY-NC)'),
        AttributedUrl(_base + 'tussilago_farfara_3.jpg', '© Peter Jessen (CC-BY-NC)'),
      ],
    )
  ];
}

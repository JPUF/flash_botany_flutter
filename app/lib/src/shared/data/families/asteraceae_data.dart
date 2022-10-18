import '../../models/attributed_url.dart';
import '../../models/family.dart';
import '../../models/species.dart';
import '../species_data.dart';

class AsteraceaeData {
  static const _base = SpeciesData.baseImageUrl;
  static const speciesList = [
    Species(
      latinName: 'Bellis perennis',
      commonName: 'Daisy',
      family: Family.asteraceae,
      images: [
        AttributedUrl(url: _base + 'bellis_perennis_1.jpg', attribution: 'Jürgen Schimmitat, bayernflora.de'),
        AttributedUrl(url: _base + 'bellis_perennis_2.jpg', attribution: 'Jürgen Schimmitat, bayernflora.de'),
        AttributedUrl(url: _base + 'bellis_perennis_3.jpg', attribution: 'Paulo Ventura Araújo, flora-on.pt'),
      ],
    ),
    Species(
      latinName: 'Jacobaea vulgaris',
      commonName: 'Ragwort',
      family: Family.asteraceae,
      images: [
        AttributedUrl(url: _base + 'jacobaea_vulgaris_1.jpg', attribution: 'commons.wikimedia.org/wiki/User:Strobilomyces'),
        AttributedUrl(url: _base + 'jacobaea_vulgaris_2.jpg', attribution: null),
        AttributedUrl(url: _base + 'jacobaea_vulgaris_3.jpg', attribution: 'commons.wikimedia.org/wiki/User:Julia_W'),
      ],
    ),
    Species(
      latinName: 'Cichorium intybus',
      commonName: 'Chicory',
      family: Family.asteraceae,
      images: [
        AttributedUrl(url: _base + 'cichorium_intybus_1.jpg', attribution: '© Anthony Zammit (CC-BY-NC)'),
        AttributedUrl(url: _base + 'cichorium_intybus_2.jpg', attribution: '© igor_olshanskyi (CC-BY-NC)'),
        AttributedUrl(url: _base + 'cichorium_intybus_3.jpg', attribution: '© nhunterjr (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Tussilago farfara',
      commonName: 'Colt’s Foot',
      family: Family.asteraceae,
      images: [
        AttributedUrl(url: _base + 'tussilago_farfara_1.jpg', attribution: '© lydwin, some rights reserved (CC-BY-NC)'),
        AttributedUrl(url: _base + 'tussilago_farfara_2.jpg', attribution: '© eliegaget (CC-BY-NC)'),
        AttributedUrl(url: _base + 'tussilago_farfara_3.jpg', attribution: '© Peter Jessen (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Pilosella aurantiaca',
      commonName: 'Fox-and-Cubs',
      family: Family.asteraceae,
      images: [
        AttributedUrl(url: _base + 'pilosella_aurantica_1.jpg', attribution: '© Andrea Kreuzhage (CC-BY-NC)'),
        AttributedUrl(url: _base + 'pilosella_aurantica_2.jpg', attribution: '© Andrea Kreuzhage (CC-BY-NC)'),
      ],
    )
  ];
}

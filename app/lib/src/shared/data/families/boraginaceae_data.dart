import '../../models/attributed_url.dart';
import '../../models/family.dart';
import '../../models/species.dart';
import '../species_data.dart';

class BoraginaceaeData {
  static const _base = SpeciesData.baseImageUrl;
  static const speciesList = [
    Species(
      latinName: 'Echium vulgare',
      commonName: 'Viper’s-Bugloss',
      family: Family.boraginaceae,
      images: [
        AttributedUrl(_base + 'echium_vulgare_1.jpg', '© stephencjg (CC-BY-NC)'),
        AttributedUrl(_base + 'echium_vulgare_2.jpg', '© Zdeňka Nováková (CC-BY-NC)'),
        AttributedUrl(_base + 'echium_vulgare_3.jpg', '© neco-w (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Pentaglottis sempervirens',
      commonName: 'Green Alkanet',
      family: Family.boraginaceae,
      images: [
        AttributedUrl(_base + 'pentaglottis_sempervirens_1.jpg', '© xinxane (CC-BY-NC)'),
        AttributedUrl(_base + 'pentaglottis_sempervirens_2.jpg', '© Chris Millward (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Phacelia tanacetifolia',
      commonName: 'Lacy Phacelia',
      family: Family.boraginaceae,
      images: [
        AttributedUrl(_base + 'phacelia_tanacetifolia_1.jpg', '© JC Ferebee (CC-BY-NC)'),
        AttributedUrl(_base + 'phacelia_tanacetifolia_2.jpg', '© Lauren Glevanik (CC-BY-NC)'),
        AttributedUrl(_base + 'phacelia_tanacetifolia_3.jpg', '© Valentin Hamon (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Cynoglossum officinale',
      commonName: 'Hound’s-Tongue',
      family: Family.boraginaceae,
      images: [
        AttributedUrl(_base + 'cynoglossum_officinale_1.jpg', '© Ludwig Treuter (CC-BY-NC)'),
        AttributedUrl(_base + 'cynoglossum_officinale_2.jpg', '© Ludwig Treuter (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Symphytum tuberosum',
      commonName: 'Tuberous Comfrey',
      family: Family.boraginaceae,
      images: [
        AttributedUrl(_base + 'symphytum_tuberosum_1.jpg', '© Giovanni Perico (CC-BY-NC)'),
        AttributedUrl(_base + 'symphytum_tuberosum_2.jpg', '© whinaem (CC-BY-NC)'),
      ],
    ),
  ];
}

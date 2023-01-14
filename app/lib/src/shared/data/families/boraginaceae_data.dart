import '../../models/attributed_url.dart';
import '../../models/family.dart';
import '../../models/species.dart';
import '../network/network_data.dart';

class BoraginaceaeData {
  static const _base = basePromptUrl;
  static const speciesList = [
    Species(
      latinName: 'Echium vulgare',
      commonName: 'Viper’s-Bugloss',
      family: Family.boraginaceae,
      images: [
        AttributedUrl(url: _base + 'echium_vulgare_1.jpg', attribution: '© stephencjg (CC-BY-NC)'),
        AttributedUrl(url: _base + 'echium_vulgare_2.jpg', attribution: '© Zdeňka Nováková (CC-BY-NC)'),
        AttributedUrl(url: _base + 'echium_vulgare_3.jpg', attribution: '© neco-w (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Pentaglottis sempervirens',
      commonName: 'Green Alkanet',
      family: Family.boraginaceae,
      images: [
        AttributedUrl(url: _base + 'pentaglottis_sempervirens_1.jpg', attribution: '© xinxane (CC-BY-NC)'),
        AttributedUrl(url: _base + 'pentaglottis_sempervirens_2.jpg', attribution: '© Chris Millward (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Phacelia tanacetifolia',
      commonName: 'Lacy Phacelia',
      family: Family.boraginaceae,
      images: [
        AttributedUrl(url: _base + 'phacelia_tanacetifolia_1.jpg', attribution: '© JC Ferebee (CC-BY-NC)'),
        AttributedUrl(url: _base + 'phacelia_tanacetifolia_2.jpg', attribution: '© Lauren Glevanik (CC-BY-NC)'),
        AttributedUrl(url: _base + 'phacelia_tanacetifolia_3.jpg', attribution: '© Valentin Hamon (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Cynoglossum officinale',
      commonName: 'Hound’s-Tongue',
      family: Family.boraginaceae,
      images: [
        AttributedUrl(url: _base + 'cynoglossum_officinale_1.jpg', attribution: '© Ludwig Treuter (CC-BY-NC)'),
        AttributedUrl(url: _base + 'cynoglossum_officinale_2.jpg', attribution: '© Ludwig Treuter (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Symphytum tuberosum',
      commonName: 'Tuberous Comfrey',
      family: Family.boraginaceae,
      images: [
        AttributedUrl(url: _base + 'symphytum_tuberosum_1.jpg', attribution: '© Giovanni Perico (CC-BY-NC)'),
        AttributedUrl(url: _base + 'symphytum_tuberosum_2.jpg', attribution: '© whinaem (CC-BY-NC)'),
      ],
    ),
  ];
}

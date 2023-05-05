import '../../models/attributed_url.dart';
import '../../models/family.dart';
import '../../models/species.dart';
import '../network/network_data.dart';

class RanunculaceaeData {
  static const _base = basePromptUrl;
  static const speciesList = [
    Species(
      latinName: 'Ficaria verna',
      commonName: 'Lesser Celandine',
      family: Family.ranunculaceae,
      images: [
        AttributedUrl(url: _base + 'ficaria_verna_1.jpg', attribution: '© katie1776 (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Anemonoides nemorosa',
      commonName: 'Wood Anemone',
      family: Family.ranunculaceae,
      images: [
        AttributedUrl(url: _base + 'anemonoides_nemorosa_1.jpg', attribution: '© Bernhard Fischer (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Caltha palustris',
      commonName: 'Marsh Marigold',
      family: Family.ranunculaceae,
      images: [
        AttributedUrl(url: _base + 'caltha_palustris_1.jpg', attribution: '© Calum McLennan (CC-BY-NC)'),
        AttributedUrl(url: _base + 'caltha_palustris_2.jpg', attribution: '© Zeke Marshall (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Hepatica nobilis',
      commonName: 'Liverwort',
      family: Family.ranunculaceae,
      images: [
        AttributedUrl(url: _base + 'hepatica_nobilis_1.jpg', attribution: '© Jérémie Février (CC-BY-NC)'),
        AttributedUrl(url: _base + 'hepatica_nobilis_2.jpg', attribution: '© Fanny Zortea (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Eranthis hyemalis',
      commonName: 'Winter Aconite',
      family: Family.ranunculaceae,
      images: [
        AttributedUrl(url: _base + 'eranthis_hyemalis_1.jpg', attribution: '© Nikolett Tóth (CC-BY-NC)'),
        AttributedUrl(url: _base + 'eranthis_hyemalis_2.jpg', attribution: '© Jordan Broadhead (CC-BY-NC)'),
      ],
    ),
  ];
}

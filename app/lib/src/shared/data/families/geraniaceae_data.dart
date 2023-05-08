import '../../models/attributed_url.dart';
import '../../models/family.dart';
import '../../models/species.dart';
import '../network/network_data.dart';

class GeraniaceaeData {
  static const _base = basePromptUrl;
  static const speciesList = [
    Species(
      latinName: 'Geranium robertianum',
      commonName: 'Herb Robert',
      family: Family.geraniaceae,
      images: [
        AttributedUrl(url: _base + 'geranium_robertianum_1.jpg', attribution: '© Kathryn Arnold (CC-BY-NC)'),
        AttributedUrl(url: _base + 'geranium_robertianum_2.jpg', attribution: '© spitho (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Geranium pratense',
      commonName: 'Meadow Cranesbill',
      family: Family.geraniaceae,
      images: [
        AttributedUrl(url: _base + 'geranium_pratense_1.jpg', attribution: '© newtt (CC-BY-NC)'),
        AttributedUrl(url: _base + 'geranium_pratense_2.jpg', attribution: '© anna_efimova (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Erodium cicutarium',
      commonName: 'Common Storks-bill',
      family: Family.geraniaceae,
      images: [
        AttributedUrl(url: _base + 'erodium_cicutarium_1.jpg', attribution: '© linneav (CC-BY-NC)'),
        AttributedUrl(url: _base + 'erodium_cicutarium_2.jpg', attribution: '© Bonnie Kinder (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Erodium moschatum',
      commonName: 'Musk Storks-bill',
      family: Family.geraniaceae,
      images: [
        AttributedUrl(url: _base + 'erodium_moschatum_1.jpg', attribution: '© kymelen (CC-BY-NC)'),
        AttributedUrl(url: _base + 'erodium_moschatum_2.jpg', attribution: '© lorenzodotti (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Geranium viscosissimum',
      commonName: 'Sticky Geranium',
      family: Family.geraniaceae,
      images: [
        AttributedUrl(url: _base + 'geranium_viscosissimum_1.jpg', attribution: '© Rosemary J. Smith (CC-BY-NC)'),
      ],
    ),
  ];
}

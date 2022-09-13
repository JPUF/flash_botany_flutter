import '../../models/attributed_url.dart';
import '../../models/family.dart';
import '../../models/species.dart';
import '../species_data.dart';

class LamiaceaeData {
  static const _base = SpeciesData.baseImageUrl;
  static const speciesList = [
    Species(
      latinName: 'Lamium purpureum',
      commonName: 'Red Deadnettle',
      family: Family.lamiaceae,
      images: [
        AttributedUrl(_base + 'lamium_purpureum_1.jpg', '© Douglas Goldman (CC-BY-NC)'),
        AttributedUrl(_base + 'lamium_purpureum_2.jpg', '© Сергей Крыленко (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Betonica officinalis',
      commonName: 'Betony',
      family: Family.lamiaceae,
      images: [
        AttributedUrl(_base + 'betonica_officinalis_1.jpg', '© carlobraunert (CC-BY-NC)'),
        AttributedUrl(_base + 'betonica_officinalis_2.jpg', '© ahmedm (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Galeopsis speciosa',
      commonName: 'Large-flowered Hemp-Nettle',
      family: Family.lamiaceae,
      images: [
        AttributedUrl(_base + 'galeopsis_speciosa_1.jpg', '© Jakob Fahr (CC-BY-NC)'),
        AttributedUrl(_base + 'galeopsis_speciosa_2.jpg', '© tomschnee (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Clinopodium vulgare',
      commonName: 'Wild Basil',
      family: Family.lamiaceae,
      images: [
        AttributedUrl(_base + 'clinopodium_vulgare_1.jpg', '© Nils N (CC-BY-NC)'),
        AttributedUrl(_base + 'clinopodium_vulgare_2.jpg', '© sblumen (CC-BY-NC)'),
        AttributedUrl(_base + 'clinopodium_vulgare_3.jpg', '© Иван Матершев (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Melissa officinalis',
      commonName: 'Lemon Balm',
      family: Family.lamiaceae,
      images: [
        AttributedUrl(_base + 'melissa_officinalis_1.jpg', '© James Bailey (CC-BY-NC)'),
        AttributedUrl(_base + 'melissa_officinalis_2.jpg', '© Andrey Danilin (CC-BY-NC)'),
      ],
    ),
  ];
}

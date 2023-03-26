import '../../models/attributed_url.dart';
import '../../models/family.dart';
import '../../models/species.dart';
import '../network/network_data.dart';

class LamiaceaeData {
  static const _base = basePromptUrl;
  static const speciesList = [
    Species(
      latinName: 'Lamium purpureum',
      commonName: 'Red Deadnettle',
      family: Family.lamiaceae,
      images: [
        AttributedUrl(url: _base + 'lamium_purpureum_1.jpg', attribution: '© Douglas Goldman (CC-BY-NC)'),
        AttributedUrl(url: _base + 'lamium_purpureum_2.jpg', attribution: '© Сергей Крыленко (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Betonica officinalis',
      commonName: 'Betony',
      family: Family.lamiaceae,
      images: [
        AttributedUrl(url: _base + 'betonica_officinalis_1.jpg', attribution: '© carlobraunert (CC-BY-NC)'),
        AttributedUrl(url: _base + 'betonica_officinalis_2.jpg', attribution: '© ahmedm (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Galeopsis speciosa',
      commonName: 'Large-flowered Hemp-Nettle',
      family: Family.lamiaceae,
      images: [
        AttributedUrl(url: _base + 'galeopsis_speciosa_1.jpg', attribution: '© Jakob Fahr (CC-BY-NC)'),
        AttributedUrl(url: _base + 'galeopsis_speciosa_2.jpg', attribution: '© tomschnee (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Clinopodium vulgare',
      commonName: 'Wild Basil',
      family: Family.lamiaceae,
      images: [
        AttributedUrl(url: _base + 'clinopodium_vulgare_1.jpg', attribution: '© Nils N (CC-BY-NC)'),
        AttributedUrl(url: _base + 'clinopodium_vulgare_2.jpg', attribution: '© sblumen (CC-BY-NC)'),
        AttributedUrl(url: _base + 'clinopodium_vulgare_3.jpg', attribution: '© Иван Матершев (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Melissa officinalis',
      commonName: 'Lemon Balm',
      family: Family.lamiaceae,
      images: [
        AttributedUrl(url: _base + 'melissa_officinalis_1.jpg', attribution: '© James Bailey (CC-BY-NC)'),
        AttributedUrl(url: _base + 'melissa_officinalis_2.jpg', attribution: '© Andrey Danilin (CC-BY-NC)'),
      ],
    ),
  ];
}

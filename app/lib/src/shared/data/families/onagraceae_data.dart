import '../../models/attributed_url.dart';
import '../../models/species.dart';
import '../network/network_data.dart';

class OnagraceaeData {
  static const _base = basePromptUrl;
  static const speciesList = [
    Species(
      latinName: 'Clarkia amoena',
      commonName: 'Farewell-to-Spring',
      images: [
        AttributedUrl(url: _base + 'clarkia_amoena_1.jpg', attribution: '© danpvdb (CC-BY-NC)'),
        AttributedUrl(url: _base + 'clarkia_amoena_2.jpg', attribution: '© Sarah Berryman (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Epilobum hirsutum',
      commonName: 'Hairy Willowherb',
      images: [
        AttributedUrl(url: _base + 'epilobium_hirsutum_1.jpg', attribution: '© wildchroma (CC-BY-NC)'),
        AttributedUrl(url: _base + 'epilobium_hirsutum_2.jpg', attribution: '© janinedrozd (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Oenothera glazioviana',
      commonName: 'Large-flowered evening primrose',
      images: [
        AttributedUrl(url: _base + 'oenothera_glazioviana_1.jpg', attribution: '© Anna Jancso (CC-BY-NC)'),
        AttributedUrl(url: _base + 'oenothera_glazioviana_2.jpg', attribution: '© juliaisajew (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Chamaenerion fleischeri',
      commonName: 'Alpine Willowherb',
      images: [
        AttributedUrl(url: _base + 'chamaenerion_fleischeri_1.jpg', attribution: '© Gerrit Öhm (CC-BY-NC)'),
        AttributedUrl(url: _base + 'chamaenerion_fleischeri_2.jpg', attribution: '© faerthen (CC-BY-NC)'),
        AttributedUrl(url: _base + 'chamaenerion_fleischeri_3.jpg', attribution: '© François-Xavier Taxil (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Oenothera speciosa',
      commonName: 'Pinkladies',
      images: [
        AttributedUrl(url: _base + 'oenothera_speciosa_1.jpg', attribution: '© Selene Rangel Landa (CC-BY-NC)'),
        AttributedUrl(url: _base + 'oenothera_speciosa_2.jpg', attribution: '© sarinole (CC-BY-NC)'),
      ],
    ),
  ];

}

import '../../models/attributed_url.dart';
import '../../models/species.dart';
import '../network/network_data.dart';

class EricaceaeData {
  static const _base = basePromptUrl;
  static const List<Species> speciesList = [
    Species(
      latinName: 'Calluna vulgaris',
      commonName: 'Common Heather',
      images: [
        AttributedUrl(url: _base + 'calluna_vulgaris_1.jpg', attribution: '© lepcke (CC-BY-NC)'),
        AttributedUrl(url: _base + 'calluna_vulgaris_2.jpg', attribution: '© marshy (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Vaccinium myrtillus',
      commonName: 'Bilberry',
      images: [
        AttributedUrl(url: _base + 'vaccinium_myrtillus_1.jpg', attribution: '© Valentin Hamon (CC-BY-NC)'),
        AttributedUrl(url: _base + 'vaccinium_myrtillus_2.jpg', attribution: '© jonnamari (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Erica cinerea',
      commonName: 'Bell Heather',
      images: [
        AttributedUrl(url: _base + 'erica_cinerea_1.jpg', attribution: '© raedwulf68 (CC-BY-NC)'),
        AttributedUrl(url: _base + 'erica_cinerea_2.jpg', attribution: '© rhiannon68 (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Pyrola minor',
      commonName: 'Common Wintergreen',
      images: [
        AttributedUrl(url: _base + 'pyrola_minor_1.jpg', attribution: '© Александр Корепанов (CC-BY-NC)'),
        AttributedUrl(url: _base + 'pyrola_minor_2.jpg', attribution: '© Ian M. White (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Daboecia cantabrica',
      commonName: 'St. Dabeoc\'s Heath',
      images: [
        AttributedUrl(url: _base + 'daboecia_cantabrica_1.jpg', attribution: '© Víctor González García (CC-BY-NC)'),
        AttributedUrl(url: _base + 'daboecia_cantabrica_2.jpg', attribution: '© franciscodocampo (CC-BY-NC)'),
      ],
    ),
  ];
}

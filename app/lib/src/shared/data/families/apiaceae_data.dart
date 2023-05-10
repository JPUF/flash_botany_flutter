import '../../models/attributed_url.dart';
import '../../models/species.dart';
import '../network/network_data.dart';

class ApiaceaeData {
  static const _base = basePromptUrl;
  static const speciesList = [
    Species(
      latinName: 'Crithmium maritimum',
      commonName: 'Rock Samphire',
      images: [
        AttributedUrl(
            url: _base + 'crithmium_maritimum_1.jpg',
            attribution: '© Marina Roth (CC-BY-NC)'),
        AttributedUrl(
            url: _base + 'crithmium_maritimum_2.jpg',
            attribution: '© Emilie G. (CC-BY-NC)'),
        AttributedUrl(
            url: _base + 'crithmium_maritimum_3.jpg',
            attribution: '© victorin83250 (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Pimpinella saxifraga',
      commonName: 'Rock Samphire',
      images: [
        AttributedUrl(
            url: _base + 'pimpinella_saxifraga_1.jpg',
            attribution: '© kusariqqu (CC-BY-NC)'),
        AttributedUrl(
            url: _base + 'pimpinella_saxifraga_2.jpg',
            attribution: '© Ольга Лапшина (CC-BY-NC)'),
        AttributedUrl(
            url: _base + 'pimpinella_saxifraga_3.jpg',
            attribution: '© Nikolay V Dorofeev (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Aegopodium podagraria',
      commonName: 'Ground-Elder',
      images: [
        AttributedUrl(
            url: _base + 'aegopodium_podagraria_1.jpg',
            attribution: '© Douglas Goldman (CC-BY-NC)'),
        AttributedUrl(
            url: _base + 'aegopodium_podagraria_2.jpg',
            attribution: '© Douglas Goldman (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Conium maculatum',
      commonName: 'Poison Hemlock',
      images: [
        AttributedUrl(
            url: _base + 'conium_maculatum_1.jpg',
            attribution: '© petr_kosachev (CC-BY-NC)'),
        AttributedUrl(
            url: _base + 'conium_maculatum_2.jpg',
            attribution: '© Víctor Huete (CC-BY-NC)'),
        AttributedUrl(
            url: _base + 'conium_maculatum_3.jpg',
            attribution: '© CDance (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Oenanthe crocata',
      commonName: 'Hemlock Water-Dropwort',
      images: [
        AttributedUrl(
            url: _base + 'oenanthe_crocata_1.jpg',
            attribution: '© pilmar (CC-BY-NC)'),
        AttributedUrl(
            url: _base + 'oenanthe_crocata_2.jpg',
            attribution: '© elenaagutierrez_ (CC-BY-NC)'),
      ],
    ),
  ];
}

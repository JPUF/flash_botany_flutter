import '../../models/attributed_url.dart';
import '../../models/species.dart';
import '../network/network_data.dart';

class EuphorbiaceaeData {
  static const _base = basePromptUrl;
  static const speciesList = [
    Species(
      latinName: 'Euphorbia characias',
      commonName: 'Mediterranean spurge',
      images: [
        AttributedUrl(url: _base + 'euphorbia_characias_1.jpg', attribution: '© sam_j777 (CC-BY-NC)'),
        AttributedUrl(url: _base + 'euphorbia_characias_2.jpg', attribution: '© elelugaro (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Euphorbia verrucosa',
      commonName: 'Warty spurge',
      images: [
        AttributedUrl(url: _base + 'euphorbia_verrucosa_1.jpg', attribution: '© Anne-Hélène Paradis (CC-BY-SA)'),
        AttributedUrl(url: _base + 'euphorbia_verrucosa_2.jpg', attribution: '© Andreas Berger (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Euphorbia peplus',
      commonName: 'Petty spurge',
      images: [
        AttributedUrl(url: _base + 'euphorbia_peplus_1.jpg', attribution: '© Dariusz Kamiński (CC-BY-NC)'),
        AttributedUrl(url: _base + 'euphorbia_peplus_2.jpg', attribution: '© Sing to the Mountain Studio (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Euphorbia exigua',
      commonName: 'Dwarf spurge',
      images: [
        AttributedUrl(url: _base + 'euphorbia_exigua_1.jpg', attribution: '© Matthieu Gauvain (CC-BY-NC)'),
        AttributedUrl(url: _base + 'euphorbia_exigua_2.jpg', attribution: '© Matthieu Gauvain (CC-BY-SA)'),
      ],
    ),
    Species(
      latinName: 'Mercurialis perennis',
      commonName: 'Dog\'s Mercury',
      images: [
        AttributedUrl(url: _base + 'mercurialis_perennis_1.jpg', attribution: '© John Magne Grindeland (CC-BY-SA)'),
        AttributedUrl(url: _base + 'mercurialis_perennis_2.jpg', attribution: '© Zeke Marshall (CC-BY-SA)'),
      ],
    ),
  ];

}

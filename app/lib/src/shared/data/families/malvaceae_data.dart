import '../../models/attributed_url.dart';
import '../../models/family.dart';
import '../../models/species.dart';
import '../network/network_data.dart';

class MalvaceaeData {
  static const _base = basePromptUrl;
  static const speciesList = [
    Species(
      latinName: 'Malva sylvestris',
      commonName: 'Common Mallow',
      images: [
        AttributedUrl(url: _base + 'malva_sylvestris_1.jpg', attribution: '© omadoro (CC-BY-NC)'),
        AttributedUrl(url: _base + 'malva_sylvestris_2.jpg', attribution: '© dolordebarriga (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Alcea rosea',
      commonName: 'Hollyhock',
      images: [
        AttributedUrl(url: _base + 'alcea_rosea_1.jpg', attribution: '© julievogelkolte (CC-BY-NC)'),
        AttributedUrl(url: _base + 'alcea_rosea_2.jpg', attribution: '© Christian Sørensen (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Hibiscus syriacus',
      commonName: 'Rose of Sharon',
      images: [
        AttributedUrl(url: _base + 'hibiscus_syriacus_1.jpg', attribution: '© rucbar (CC-BY-NC)'),
        AttributedUrl(url: _base + 'hibiscus_syriacus_2.jpg', attribution: '© Jean-Christophe Champarnaud (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Althaea officinalis',
      commonName: 'Marsh Mallow',
      images: [
        AttributedUrl(url: _base + 'althaea_officinalis_1.jpg', attribution: '© mallaliev (CC-BY-NC)'),
        AttributedUrl(url: _base + 'althaea_officinalis_2.jpg', attribution: '© loustinaforest (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Malva subovata',
      commonName: 'Sea Mallow',
      images: [
        AttributedUrl(url: _base + 'malva_subovata_1.jpg', attribution: '© davidacks (CC-BY-NC)'),
        AttributedUrl(url: _base + 'malva_subovata_2.jpg', attribution: '© rmdenton (CC-BY-NC)'),
      ],
    ),
  ];
}

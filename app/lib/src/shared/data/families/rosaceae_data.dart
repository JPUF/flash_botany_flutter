import '../../models/attributed_url.dart';
import '../../models/species.dart';
import '../network/network_data.dart';

class RosaceaeData {
  static const _base = basePromptUrl;
  static const speciesList = [
    Species(
      latinName: 'Geum urbanum',
      commonName: 'Wood Avens',
      images: [
        AttributedUrl(url: _base + 'geum_urbanum_1.jpg', attribution: '© edita_medeina (CC-BY-NC)'),
        AttributedUrl(url: _base + 'geum_urbanum_2.jpg', attribution: '© edita_medeina (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Rosa canina',
      commonName: 'Dog Rose',
      images: [
        AttributedUrl(url: _base + 'rosa_canina_1.jpg', attribution: '© claire97482 (CC-BY-NC)'),
        AttributedUrl(url: _base + 'rosa_canina_2.jpg', attribution: '© A Emmerson (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Prunus spinosa',
      commonName: 'Blackthorn',
      images: [
        AttributedUrl(url: _base + 'prunus_spinosa_1.jpg', attribution: '© Σάββας Ζαφειρίου (Savvas Zafeiriou) (CC-BY-NC)'),
        AttributedUrl(url: _base + 'prunus_spinosa_2.jpg', attribution: '© Pedro Beja (CC-BY-NC)'),
        AttributedUrl(url: _base + 'prunus_spinosa_3.jpg', attribution: '© Sokolov Yuriy Ivanovich (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Rubus caesius',
      commonName: 'European Dewberry',
      images: [
        AttributedUrl(url: _base + 'rubus_caesius_1.jpg', attribution: '© jf920 (CC-BY-NC)'),
        AttributedUrl(url: _base + 'rubus_caesius_2.jpg', attribution: '© Зеленкова Виктория (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Fragaria vesca',
      commonName: 'Wild Strawberry',
      images: [
        AttributedUrl(url: _base + 'fragaria_vesca_1.jpg', attribution: '© Brooke Bollinger (CC-BY-NC)'),
        AttributedUrl(url: _base + 'fragaria_vesca_2.jpg', attribution: '© Lola Smirnova (CC-BY-NC)'),
        AttributedUrl(url: _base + 'fragaria_vesca_3.jpg', attribution: '© nature1111 (CC-BY-NC)'),
      ],
    ),
  ];
}

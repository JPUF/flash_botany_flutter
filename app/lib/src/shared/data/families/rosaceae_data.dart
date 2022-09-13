import '../../models/attributed_url.dart';
import '../../models/family.dart';
import '../../models/species.dart';
import '../species_data.dart';

class RosaceaeData {
  static const _base = SpeciesData.baseImageUrl;
  static const speciesList = [
    Species(
      latinName: 'Geum urbanum',
      commonName: 'Wood Avens',
      family: Family.rosaceae,
      images: [
        AttributedUrl(_base + 'geum_urbanum_1.jpg', '© edita_medeina (CC-BY-NC)'),
        AttributedUrl(_base + 'geum_urbanum_2.jpg', '© edita_medeina (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Rosa canina',
      commonName: 'Dog Rose',
      family: Family.rosaceae,
      images: [
        AttributedUrl(_base + 'rosa_canina_1.jpg', '© claire97482 (CC-BY-NC)'),
        AttributedUrl(_base + 'rosa_canina_2.jpg', '© A Emmerson (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Prunus spinosa',
      commonName: 'Blackthorn',
      family: Family.rosaceae,
      images: [
        AttributedUrl(_base + 'prunus_spinosa_1.jpg', '© Σάββας Ζαφειρίου (Savvas Zafeiriou) (CC-BY-NC)'),
        AttributedUrl(_base + 'prunus_spinosa_2.jpg', '© Pedro Beja (CC-BY-NC)'),
        AttributedUrl(_base + 'prunus_spinosa_3.jpg', '© Sokolov Yuriy Ivanovich (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Rubus caesius',
      commonName: 'European Dewberry',
      family: Family.rosaceae,
      images: [
        AttributedUrl(_base + 'rubus_caesius_1.jpg', '© jf920 (CC-BY-NC)'),
        AttributedUrl(_base + 'rubus_caesius_2.jpg', '© Зеленкова Виктория (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Fragaria vesca',
      commonName: 'Wild Strawberry',
      family: Family.rosaceae,
      images: [
        AttributedUrl(_base + 'fragaria_vesca_1.jpg', '© Brooke Bollinger (CC-BY-NC)'),
        AttributedUrl(_base + 'fragaria_vesca_2.jpg', '© Lola Smirnova (CC-BY-NC)'),
        AttributedUrl(_base + 'fragaria_vesca_3.jpg', '© nature1111 (CC-BY-NC)'),
      ],
    ),
  ];
}

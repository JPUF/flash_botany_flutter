import '../../models/attributed_url.dart';
import '../../models/family.dart';
import '../../models/species.dart';
import '../species_data.dart';

class CaryophyllaceaeData {
  static const _base = SpeciesData.baseImageUrl;
  static const speciesList = [
    Species(
      latinName: 'Silene latifolia',
      commonName: 'White Campion',
      family: Family.caryophyllaceae,
      images: [
        AttributedUrl(_base + 'silene_latifolia_1.jpg', '© Sergey Mayorov (CC-BY-NC)'),
        AttributedUrl(_base + 'silene_latifolia_2.jpg', '© Elisabetta Sbrega (CC-BY-NC)'),
        AttributedUrl(_base + 'silene_latifolia_3.jpg', '© Vladimir Bryukhov (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Cerastium fontanum',
      commonName: 'Common Mouse-Ear',
      family: Family.caryophyllaceae,
      images: [
        AttributedUrl(_base + 'cerastium_fontanum_1.jpg', '© hannahrjp (CC-BY-NC)'),
        AttributedUrl(_base + 'cerastium_fontanum_2.jpg', '© camillelep (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Stellaria graminea',
      commonName: 'Lesser Stitchwort',
      family: Family.caryophyllaceae,
      images: [
        AttributedUrl(_base + 'stellaria_graminea_1.jpg', '© eugenezakharov (CC-BY-NC)'),
        AttributedUrl(_base + 'stellaria_graminea_2.jpg', '© eugenezakharov (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Agrostemma githago',
      commonName: 'Corn Cockle',
      family: Family.caryophyllaceae,
      images: [
        AttributedUrl(_base + 'agrostemma_githago_1.jpg', '© Jean-Dominique LEBRETON (CC-BY-NC)'),
        AttributedUrl(_base + 'agrostemma_githago_2.jpg', '© Andreas Rockstein (CC-BY-NC)'),
        AttributedUrl(_base + 'agrostemma_githago_3.jpg', '© weekend (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Viscaria vulgaris',
      commonName: 'Sticky Catchfly',
      family: Family.caryophyllaceae,
      images: [
        AttributedUrl(_base + 'viscaria_vulgaris_1.jpg', '© Igor (CC-BY-NC)'),
        AttributedUrl(_base + 'viscaria_vulgaris_2.jpg', '© Бородина Ульяна Владимировна (CC-BY-NC)'),
      ],
    ),
  ];
}

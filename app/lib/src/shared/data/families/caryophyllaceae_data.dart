import '../../models/attributed_url.dart';
import '../../models/species.dart';
import '../network/network_data.dart';

class CaryophyllaceaeData {
  static const _base = basePromptUrl;
  static const speciesList = [
    Species(
      latinName: 'Silene latifolia',
      commonName: 'White Campion',
      images: [
        AttributedUrl(url: _base + 'silene_latifolia_1.jpg', attribution: '© Sergey Mayorov (CC-BY-NC)'),
        AttributedUrl(url: _base + 'silene_latifolia_2.jpg', attribution: '© Elisabetta Sbrega (CC-BY-NC)'),
        AttributedUrl(url: _base + 'silene_latifolia_3.jpg', attribution: '© Vladimir Bryukhov (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Cerastium fontanum',
      commonName: 'Common Mouse-Ear',
      images: [
        AttributedUrl(url: _base + 'cerastium_fontanum_1.jpg', attribution: '© hannahrjp (CC-BY-NC)'),
        AttributedUrl(url: _base + 'cerastium_fontanum_2.jpg', attribution: '© camillelep (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Stellaria graminea',
      commonName: 'Lesser Stitchwort',
      images: [
        AttributedUrl(url: _base + 'stellaria_graminea_1.jpg', attribution: '© eugenezakharov (CC-BY-NC)'),
        AttributedUrl(url: _base + 'stellaria_graminea_2.jpg', attribution: '© eugenezakharov (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Agrostemma githago',
      commonName: 'Corn Cockle',
      images: [
        AttributedUrl(url: _base + 'agrostemma_githago_1.jpg', attribution: '© Jean-Dominique LEBRETON (CC-BY-NC)'),
        AttributedUrl(url: _base + 'agrostemma_githago_2.jpg', attribution: '© Andreas Rockstein (CC-BY-NC)'),
        AttributedUrl(url: _base + 'agrostemma_githago_3.jpg', attribution: '© weekend (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Viscaria vulgaris',
      commonName: 'Sticky Catchfly',
      images: [
        AttributedUrl(url: _base + 'viscaria_vulgaris_1.jpg', attribution: '© Igor (CC-BY-NC)'),
        AttributedUrl(url: _base + 'viscaria_vulgaris_2.jpg', attribution: '© Бородина Ульяна Владимировна (CC-BY-NC)'),
      ],
    ),
  ];
}

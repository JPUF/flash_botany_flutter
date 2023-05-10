import '../../models/attributed_url.dart';
import '../../models/species.dart';
import '../network/network_data.dart';

class PolygonaceaeData {
  static const _base = basePromptUrl;
  static const speciesList = [
    Species(
      latinName: 'Bistorta officinalis',
      commonName: 'Common Bistort',
      images: [
        AttributedUrl(url: _base + 'bistorta_officinalis_1.jpg', attribution: '© geobon (CC-BY-NC)'),
        AttributedUrl(url: _base + 'bistorta_officinalis_2.jpg', attribution: '© Rahel Fab (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Reynoutria japonica',
      commonName: 'Japanese Knotweed',
      images: [
        AttributedUrl(url: _base + 'reynoutria_japonica_1.jpg', attribution: '© Eric C. Maxwell (CC-BY-NC)'),
        AttributedUrl(url: _base + 'reynoutria_japonica_2.jpg', attribution: '© Steve Ansell (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Rumex acetosa',
      commonName: 'Common Sorrel',
      images: [
        AttributedUrl(url: _base + 'rumex_acetosa_1.jpg', attribution: '© Dina Nesterkova (CC-BY-NC)'),
        AttributedUrl(url: _base + 'rumex_acetosa_2.jpg', attribution: '© matteo_76 (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Polygonum aviculare',
      commonName: 'Knotgrass',
      images: [
        AttributedUrl(url: _base + 'polygonum_aviculare_1.jpg', attribution: '© Vladimir Bryukhov (CC-BY-NC)'),
        AttributedUrl(url: _base + 'polygonum_aviculare_2.jpg', attribution: '© Matthieu Gauvain (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Fallopia convolvulus',
      commonName: 'Black-bindweed',
      images: [
        AttributedUrl(url: _base + 'fallopia_convolvulus_1.jpg', attribution: '© Sergey Mayorov (CC-BY-NC)'),
        AttributedUrl(url: _base + 'fallopia_convolvulus_2.jpg', attribution: '© cava (CC-BY-NC)'),
      ],
    ),
  ];

}

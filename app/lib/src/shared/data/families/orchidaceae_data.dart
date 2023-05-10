import '../../models/attributed_url.dart';
import '../../models/species.dart';
import '../network/network_data.dart';

class OrchidaceaeData {
  static const _base = basePromptUrl;
  static const speciesList = [
    Species(
      latinName: 'Dactylorhiza fuchsii',
      commonName: 'Common Spotted Orchid',
      images: [
        AttributedUrl(url: _base + 'dactylorhiza_fuchsii_1.jpg', attribution: '© jonasbarzdenas (CC-BY-NC)'),
        AttributedUrl(url: _base + 'dactylorhiza_fuchsii_2.jpg', attribution: '© lorenzodotti (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Ophrys apifera',
      commonName: 'Bee Orchid',
      images: [
        AttributedUrl(url: _base + 'ophrys_apifera_1.jpg', attribution: '© Bruno Durand (CC-BY-NC)'),
        AttributedUrl(url: _base + 'ophrys_apifera_2.jpg', attribution: '© Dean Zagorac (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Platanthera bifolia',
      commonName: 'Lesser Butterfly Orchid',
      images: [
        AttributedUrl(url: _base + 'platanthera_bifolia_1.jpg', attribution: '© TOV Muusse (CC-BY-NC)'),
        AttributedUrl(url: _base + 'platanthera_bifolia_2.jpg', attribution: '© @c.fenoll (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Epipactis helleborine',
      commonName: 'Broad-leaved Helleborine',
      images: [
        AttributedUrl(url: _base + 'epipactis_helleborine_1.jpg', attribution: '© François Plourde — Renard frak (CC-BY-NC)'),
        AttributedUrl(url: _base + 'epipactis_helleborine_2.jpg', attribution: '© Vladimir Bryukhov (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Himantoglossum robertianum',
      commonName: 'Giant Orchid',
      images: [
        AttributedUrl(url: _base + 'himantoglossum_robertianum_1.jpg', attribution: '© Giacomo Gola (CC-BY-NC)'),
        AttributedUrl(url: _base + 'himantoglossum_robertianum_2.jpg', attribution: '© Mario Bassini (CC-BY)'),
      ],
    ),
  ];
}

import '../../models/attributed_url.dart';
import '../../models/family.dart';
import '../../models/species.dart';
import '../network/network_data.dart';

class FabaceaeData {
  static const _base = basePromptUrl;
  static const speciesList = [
    Species(
      latinName: 'Lotus corniculatus',
      commonName: 'Common Bird’s-foot Trefoil',
      family: Family.fabaceae,
      images: [
        AttributedUrl(url: _base + 'lotus_corniculatus_1.jpg', attribution: '© Martin A. Prinz (CC-BY-NC)'),
        AttributedUrl(url: _base + 'lotus_corniculatus_2.jpg', attribution: '© jansson (CC-BY-NC)'),
        AttributedUrl(url: _base + 'lotus_corniculatus_3.jpg', attribution: '© Jane Tatlock (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Trifolium pratense',
      commonName: 'Red Clover',
      family: Family.fabaceae,
      images: [
        AttributedUrl(url: _base + 'trifolium_pratense_1.jpg', attribution: '© Peter Jessen (CC-BY-NC)'),
        AttributedUrl(url: _base + 'trifolium_pratense_2.jpg', attribution: '© Javier Peralta de Andrés (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Vicia sativa',
      commonName: 'Common Vetch',
      family: Family.fabaceae,
      images: [
        AttributedUrl(url: _base + 'vicia_sativa_1.jpg', attribution: '© Papageorgiou Nikolaos (CC-BY-NC)'),
        AttributedUrl(url: _base + 'vicia_sativa_2.jpg', attribution: '© Emily Scherer (CC-BY-NC)'),
        AttributedUrl(url: _base + 'vicia_sativa_3.jpg', attribution: '© Linda Jo Conn (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Cytisus scoparius',
      commonName: 'Broom',
      family: Family.fabaceae,
      images: [
        AttributedUrl(url: _base + 'cytisus_scoparius_1.jpg', attribution: '© kelseya (CC-BY-NC)'),
        AttributedUrl(url: _base + 'cytisus_scoparius_2.jpg', attribution: '© Chris Nelson (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Ononis repens',
      commonName: 'Common Restharrow',
      family: Family.fabaceae,
      images: [
        AttributedUrl(url: _base + 'ononis_repens_1.jpg', attribution: '© A Emmerson (CC-BY-NC)'),
        AttributedUrl(url: _base + 'ononis_repens_2.jpg', attribution: '© Janice Sutton (CC-BY-NC)'),
      ],
    ),
  ];
}

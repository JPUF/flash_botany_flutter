import '../../models/attributed_url.dart';
import '../../models/family.dart';
import '../../models/species.dart';
import '../species_data.dart';

class FabaceaeData {
  static const _base = SpeciesData.baseImageUrl;
  static const speciesList = [
    Species(
      latinName: 'Lotus corniculatus',
      commonName: 'Common Bird’s-foot Trefoil',
      family: Family.fabaceae,
      images: [
        AttributedUrl(_base + 'lotus_corniculatus_1.jpg', '© Martin A. Prinz (CC-BY-NC)'),
        AttributedUrl(_base + 'lotus_corniculatus_2.jpg', '© jansson (CC-BY-NC)'),
        AttributedUrl(_base + 'lotus_corniculatus_3.jpg', '© Jane Tatlock (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Trifolium pratense',
      commonName: 'Red Clover',
      family: Family.fabaceae,
      images: [
        AttributedUrl(_base + 'trifolium_pratense_1.jpg', '© Peter Jessen (CC-BY-NC)'),
        AttributedUrl(_base + 'trifolium_pratense_2.jpg', '© Javier Peralta de Andrés (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Vicia sativa',
      commonName: 'Common Vetch',
      family: Family.fabaceae,
      images: [
        AttributedUrl(_base + 'vicia_sativa_1.jpg', '© Papageorgiou Nikolaos (CC-BY-NC)'),
        AttributedUrl(_base + 'vicia_sativa_2.jpg', '© Emily Scherer (CC-BY-NC)'),
        AttributedUrl(_base + 'vicia_sativa_3.jpg', '© Linda Jo Conn (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Cytisus scoparius',
      commonName: 'Broom',
      family: Family.fabaceae,
      images: [
        AttributedUrl(_base + 'cytisus_scoparius_1.jpg', '© kelseya (CC-BY-NC)'),
        AttributedUrl(_base + 'cytisus_scoparius_2.jpg', '© Chris Nelson (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Ononis repens',
      commonName: 'Common Restharrow',
      family: Family.fabaceae,
      images: [
        AttributedUrl(_base + 'ononis_repens_1.jpg', '© A Emmerson (CC-BY-NC)'),
        AttributedUrl(_base + 'ononis_repens_2.jpg', '© Janice Sutton (CC-BY-NC)'),
      ],
    ),
  ];
}

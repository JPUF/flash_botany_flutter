import '../../models/attributed_url.dart';
import '../../models/family.dart';
import '../../models/species.dart';
import '../network/network_data.dart';

class OrchidaceaeData {
  static const _base = basePromptUrl;
  static const speciesList = [
    Species(
      latinName: 'Dactylorhiza fuchsii',
      commonName: 'Common Spotted Orchid',
      family: Family.orchidaceae,
      images: [
        AttributedUrl(url: _base + 'dactylorhiza_fuchsii_1.jpg', attribution: '© jonasbarzdenas (CC-BY-NC)'),
        AttributedUrl(url: _base + 'dactylorhiza_fuchsii_2.jpg', attribution: '© lorenzodotti (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Ophrys apifera',
      commonName: 'Bee Orchid',
      family: Family.orchidaceae,
      images: [
        AttributedUrl(url: _base + 'ophrys_apifera_1.jpg', attribution: '© Bruno Durand (CC-BY-NC)'),
        AttributedUrl(url: _base + 'ophrys_apifera_2.jpg', attribution: '© Dean Zagorac (CC-BY-NC)'),
      ],
    ),
    //TODO three more orchids.
  ];
}

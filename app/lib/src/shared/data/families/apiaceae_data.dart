import '../../models/attributed_url.dart';
import '../../models/family.dart';
import '../../models/species.dart';
import '../species_data.dart';

class ApiaceaeData {
  static const _base = SpeciesData.baseImageUrl;
  static const speciesList = [
    Species(
      latinName: 'Crithmium maritimum',
      commonName: 'Rock Samphire',
      family: Family.apiaceae,
      images: [
        AttributedUrl(_base + 'crithmium_maritimum_1.jpg', '© Marina Roth (CC-BY-NC)'),
        AttributedUrl(_base + 'crithmium_maritimum_2.jpg', '© Emilie G. (CC-BY-NC)'),
        AttributedUrl(_base + 'crithmium_maritimum_3.jpg', '© victorin83250 (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Pimpinella saxifraga',
      commonName: 'Rock Samphire',
      family: Family.apiaceae,
      images: [
        AttributedUrl(_base + 'pimpinella_saxifraga_1.jpg', '© kusariqqu (CC-BY-NC)'),
        AttributedUrl(_base + 'pimpinella_saxifraga_2.jpg', '© Ольга Лапшина (CC-BY-NC)'),
        AttributedUrl(_base + 'pimpinella_saxifraga_3.jpg', '© Nikolay V Dorofeev (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Aegopodium podagraria',
      commonName: 'Ground-Elder',
      family: Family.apiaceae,
      images: [
        AttributedUrl(_base + 'aegopodium_podagraria_1.jpg', '© Douglas Goldman (CC-BY-NC)'),
        AttributedUrl(_base + 'aegopodium_podagraria_2.jpg', '© Douglas Goldman (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Conium maculatum',
      commonName: 'Poison Hemlock',
      family: Family.apiaceae,
      images: [
        AttributedUrl(_base + 'conium_maculatum_1.jpg', '© petr_kosachev (CC-BY-NC)'),
        AttributedUrl(_base + 'conium_maculatum_2.jpg', '© Víctor Huete (CC-BY-NC)'),
        AttributedUrl(_base + 'conium_maculatum_3.jpg', '© CDance (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Oenanthe crocata',
      commonName: 'Hemlock Water-Dropwort',
      family: Family.apiaceae,
      images: [
        AttributedUrl(_base + 'oenanthe_crocata_1.jpg', '© pilmar (CC-BY-NC)'),
        AttributedUrl(_base + 'oenanthe_crocata_2.jpg', '© elenaagutierrez_ (CC-BY-NC)'),
      ],
    ),
  ];
}

import '../../models/attributed_url.dart';
import '../../models/family.dart';
import '../../models/species.dart';
import '../network/network_data.dart';

class BrassicaceaeData {
  static const _base = basePromptUrl;
  static const speciesList = [
    Species(
      latinName: 'Cardamine pratensis',
      commonName: 'Cuckooflower',
      family: Family.brassicaceae,
      images: [
        AttributedUrl(url: _base + 'cardamine_pratensis_1.jpg', attribution: '© philippe_geniez (CC-BY-NC)'),
        AttributedUrl(url: _base + 'cardamine_pratensis_2.jpg', attribution: '© philippe_geniez (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Allilaria petiolata',
      commonName: 'Garlic Mustard',
      family: Family.brassicaceae,
      images: [
        AttributedUrl(url: _base + 'allilaria_petiolata_1.jpg', attribution: '© Peter Stimmler (CC-BY-NC)'),
        AttributedUrl(url: _base + 'allilaria_petiolata_2.jpg', attribution: '© philippe_geniez (CC-BY-NC)'),
        AttributedUrl(url: _base + 'allilaria_petiolata_3.jpg', attribution: '© Сергей (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Capsella bursa-pastoris',
      commonName: 'Shepherd’s-Purse',
      family: Family.brassicaceae,
      images: [
        AttributedUrl(url: _base + 'capsella_bursapastoris_1.jpg', attribution: '© svetlana-bogdanovich (CC-BY-NC)'),
        AttributedUrl(url: _base + 'capsella_bursapastoris_2.jpg', attribution: '© aitanaluis (CC-BY-NC)'),
        AttributedUrl(url: _base + 'capsella_bursapastoris_3.jpg', attribution: '© Andreas Stiller (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Lunaria annua',
      commonName: 'Annual Honesty',
      family: Family.brassicaceae,
      images: [
        AttributedUrl(url: _base + 'lunaria_annua_1.jpg', attribution: '© Thanasis Papanikolaou (CC-BY-NC)'),
        AttributedUrl(url: _base + 'lunaria_annua_2.jpg', attribution: '© olekje (CC-BY-NC)'),
      ],
    ),
    Species(
      latinName: 'Cakile maritima',
      commonName: 'Searocket',
      family: Family.brassicaceae,
      images: [
        AttributedUrl(url: _base + 'cakile_maritima_1.jpg', attribution: '© rosagruen, (CC-BY-NC)'),
        AttributedUrl(url: _base + 'cakile_maritima_2.jpg', attribution: '© Γιώργος Παντάκης, (CC-BY-NC)'),
        AttributedUrl(url: _base + 'cakile_maritima_3.jpg', attribution: '© lauribanane, (CC-BY-NC)'),
      ],
    ),
  ];
}

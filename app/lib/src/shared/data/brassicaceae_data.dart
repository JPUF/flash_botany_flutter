import '../models/attributed_url.dart';
import '../models/family.dart';
import '../models/species.dart';
import 'species_data.dart';

class BrassicaceaeData {
  static const _base = SpeciesData.baseImageUrl;
  static final speciesList = [
    const Species(
      latinName: 'Cardamine pratensis',
      commonName: 'Cuckooflower',
      family: Family.brassicaceae,
      images: [
        AttributedUrl(_base + 'cardamine_pratensis_1.jpg', '© philippe_geniez (CC-BY-NC)'),
        AttributedUrl(_base + 'cardamine_pratensis_2.jpg' , '© philippe_geniez (CC-BY-NC)'),
      ],
    ),
    const Species(
      latinName: 'Allilaria petiolata',
      commonName: 'Garlic Mustard',
      family: Family.brassicaceae,
      images: [
        AttributedUrl(_base + 'allilaria_petiolata_1.jpg', '© Peter Stimmler (CC-BY-NC)'),
        AttributedUrl(_base + 'allilaria_petiolata_2.jpg', '© philippe_geniez (CC-BY-NC)'),
        AttributedUrl(_base + 'allilaria_petiolata_3.jpg', '© Сергей (CC-BY-NC)'),
      ],
    ),
    const Species(
      latinName: 'Capsella bursa-pastoris',
      commonName: 'Shepherd’s-Purse',
      family: Family.brassicaceae,
      images: [
        AttributedUrl(_base + 'capsella_bursapastoris_1.jpg', '© svetlana-bogdanovich (CC-BY-NC)'),
        AttributedUrl(_base + 'capsella_bursapastoris_2.jpg', '© aitanaluis (CC-BY-NC)'),
        AttributedUrl(_base + 'capsella_bursapastoris_3.jpg', '© Andreas Stiller (CC-BY-NC)'),
      ],
    ),
    const Species(
      latinName: 'Lunaria annua',
      commonName: 'Annual Honesty',
      family: Family.brassicaceae,
      images: [
        AttributedUrl(_base + 'lunaria_annua_1.jpg', '© Thanasis Papanikolaou (CC-BY-NC)'),
        AttributedUrl(_base + 'lunaria_annua_2.jpg', '© olekje (CC-BY-NC)'),
      ],
    ),
    const Species(
      latinName: 'Cakile maritima',
      commonName: 'Searocket',
      family: Family.brassicaceae,
      images: [
        AttributedUrl(_base + 'cakile_maritima_1.jpg', '© rosagruen, (CC-BY-NC)'),
        AttributedUrl(_base + 'cakile_maritima_2.jpg', '© Γιώργος Παντάκης, (CC-BY-NC)'),
        AttributedUrl(_base + 'cakile_maritima_3.jpg', '© lauribanane, (CC-BY-NC)'),
      ],
    ),
  ];
}

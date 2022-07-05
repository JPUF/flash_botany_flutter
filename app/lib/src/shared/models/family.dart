import 'glossary_term.dart';

enum Family {
  asteraceae(
    'Asteraceae',
    'Daisy Family, Sunflower Family, Compositae',
    'https://en.wikipedia.org/wiki/Asteraceae',
    'What appears as one flower is actually a composite of many individual florets, growing on a disk.\n\nThe disk of florets is typically surrounded by one or many series/layers of bracts.',
    [
      GlossaryTerm.floret,
      GlossaryTerm.bract,
    ],
    [
      'https://c.pxhere.com/photos/87/e7/flowers_yellow_wild_flowers_wild_plant_anthemis_tinctoria_cota_tinctoria_dyer_hundskamille_composites-1121407.jpg!d',
      'https://c.pxhere.com/photos/d9/7a/mountain_crumpled_bluets_centaurea_montana_daisy_family_asteraceae_compositae_flower_meadow-603817.jpg!d',
      'https://c.pxhere.com/photos/6b/98/wool_head_creeping_thistle_flower_blossom_bloom_purple_violet_corolla_tube_tubular_flowers-1416082.jpg!d',
    ],
    'assets/images/asteraceae.png',
  ),
  apiaceae(
    'Apiaceae',
    'Carrot Family, Umbellifers',
    'https://en.wikipedia.org/wiki/Apiaceae',
    'Carrot family innit',
    [],
    [],
    'assets/images/apiaceae.png',
  ),
  boraginaceae(
    'Boraginaceae',
    'Borage Family, Forget-Me-Not Family',
    'https://en.wikipedia.org/wiki/Boraginaceae',
    'Borage & Forget-Me-Not family innit',
    [],
    [],
    'assets/images/boraginaceae.png',
  ),
  brassicaceae(
    'Brassicaceae',
    'Mustard Family, Cabbage Family, Crucifers',
    'https://en.wikipedia.org/wiki/Brassicaceae',
    'Mustard family innit',
    [],
    [],
    'assets/images/brassicaceae.png',
  ),
  caryophyllaceae(
    'Caryophyllaceae',
    'Pink Family, Carnation Family',
    'https://en.wikipedia.org/wiki/Caryophyllaceae',
    'Pink family innit',
    [],
    [],
    'assets/images/caryophyllaceae.png',
  ),
  lamiaceae(
    'Lamiaceae',
    'Mint Family, Sage Family',
    'https://en.wikipedia.org/wiki/Lamiaceae',
    'Mint family innit',
    [],
    [],
    'assets/images/lamiaceae.png',
  );

  final String latinName;
  final String commonName;
  final String wikiUrl;
  final String description;
  final List<GlossaryTerm> glossaryTerms;
  final List<String> exampleUrls;
  final String assetImgPath;

  const Family(
    this.latinName,
    this.commonName,
    this.wikiUrl,
    this.description,
    this.glossaryTerms,
    this.exampleUrls,
    this.assetImgPath,
  );
}

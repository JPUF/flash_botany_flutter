import 'attributed_url.dart';
import 'glossary_term.dart';

const _baseUrl = 'https://f003.backblazeb2.com/file/family-images/';

enum Family {
  asteraceae(
    'Asteraceae',
    'Daisy Family, Sunflower Family, Compositae',
    'https://en.wikipedia.org/wiki/Asteraceae',
    'What appears as one flower is actually a composite (capitulum) of many individual florets, arranged as a disc.\n\n'
        'These florets can be ray florets or disc florets.\n\n'
        'The capitulum is surrounded by an involucre.\n\n'
        'Leaves are variable.',
    [
      GlossaryTerm.floret,
      GlossaryTerm.rayFloret,
      GlossaryTerm.discFloret,
      GlossaryTerm.involucre,
      GlossaryTerm.bract,
    ],
    [
      AttributedUrl(_baseUrl + 'asteraceae_anuus.jpg', 'commons.wikimedia.org/wiki/User:Dalgial'),
      AttributedUrl(_baseUrl + 'asteraceae_arnica.jpg', 'Mary Ellen (Mel) Harte, Bugwood.org'),
      AttributedUrl(_baseUrl + 'asteraceae_centaurea.jpg', 'Rob Routledge, Sault College, Bugwood.org'),
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
    'Actinomorphic flowers. 5 petals, which can be fused to form a bell shaped corolla. Often blue.\n\n'
        'Flowers grow on a scorpioid cyme. 5 stamens. Superior ovary.\n\n'
        'Its simple leaves are arranged alternately on the stem. Leaves and stems are often covered in bristly hairs.',
    [
      GlossaryTerm.actinomorphic,
      GlossaryTerm.corolla,
      GlossaryTerm.scorpioidCyme,
      GlossaryTerm.superiorOvary,
      GlossaryTerm.simpleLeaf,
    ],
    [
      AttributedUrl(_baseUrl + 'boraginaceae_phacelia.jpg', 'commons.wikimedia.org/wiki/User:Stan_Shebs'),
      AttributedUrl(_baseUrl + 'boraginaceae_amsinckia.jpg', 'Mary Ellen (Mel) Harte, Bugwood.org'),
      AttributedUrl(_baseUrl + 'boraginaceae_symphytum.jpg'),
    ],
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
    'Zygomorphic flowers. Arranged in whorls around the stem. '
        'Petals often fused into a tube, with an upper & lower lip.\n\n'
        'The lower lip can act as a landing pad for pollinators.\n\n'
        'Usually 4 stamens, in pairs, with one pair shorter in length. 1 style. '
        'Sepals fused to form a calyx.\n\n'
        'Plant stems are square in cross–section. With serrate leaves in opposite pairs.',
    [
      GlossaryTerm.zygomorphic,
      GlossaryTerm.serrate,
      GlossaryTerm.whorl,
      GlossaryTerm.calyx
    ],
    [
      AttributedUrl(_baseUrl + 'lamiaceae_melittis.jpg', 'Pilar Alonso'),
      AttributedUrl(_baseUrl + 'lamiaceae_salvia.jpg', 'Dobromir K. commons.wikimedia.org/wiki/File:Salvia_flower.jpg'),
      AttributedUrl(_baseUrl + 'lamiaceae_stachys.jpg', 'commons.wikimedia.org/wiki/File:Stachys_palustris20110630_07.jpg'),
    ],
    'assets/images/lamiaceae.png',
  );

  final String latinName;
  final String commonName;
  final String wikiUrl;
  final String description;
  final List<GlossaryTerm> glossaryTerms;
  final List<AttributedUrl> images;
  final String assetImgPath;

  const Family(
    this.latinName,
    this.commonName,
    this.wikiUrl,
    this.description,
    this.glossaryTerms,
    this.images,
    this.assetImgPath,
  );
}

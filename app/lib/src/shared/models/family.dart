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
      AttributedUrl(_baseUrl + 'asteraceae_anuus.jpg', 'a'),
      AttributedUrl(_baseUrl + 'asteraceae_arnica.jpg'),
      AttributedUrl(_baseUrl + 'asteraceae_centaurea.jpg', 'c'),
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
      AttributedUrl(_baseUrl + 'lamiaceae_melittis.jpg'),
      AttributedUrl(_baseUrl + 'lamiaceae_salvia.jpg', '2'),
      AttributedUrl(_baseUrl + 'lamiaceae_stachys.jpg', '3'),
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

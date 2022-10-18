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
      AttributedUrl(
          url: _baseUrl + 'asteraceae_anuus.jpg',
          attribution: 'commons.wikimedia.org/wiki/User:Dalgial'),
      AttributedUrl(
          url: _baseUrl + 'asteraceae_arnica.jpg',
          attribution: 'Mary Ellen (Mel) Harte, Bugwood.org'),
      AttributedUrl(
          url: _baseUrl + 'asteraceae_centaurea.jpg',
          attribution: 'Rob Routledge, Sault College, Bugwood.org'),
    ],
    'assets/images/asteraceae.png',
  ),
  apiaceae(
    'Apiaceae',
    'Carrot Family, Umbellifers',
    'https://en.wikipedia.org/wiki/Apiaceae',
    'Umbel inflorescence. Each individual flower is small. 5 petals, often white or similarly pale.\n\n'
        '5 stamens and 2 pistils. Inferior ovary.\n\n'
        'Stems are often lanky and hollow. Leaves are divided into leaflets.',
    [
      GlossaryTerm.umbel,
      GlossaryTerm.inflorescence,
      GlossaryTerm.inferiorOvary,
    ],
    [
      AttributedUrl(url: _baseUrl + 'apiaceae_anethum.jpg', attribution: null),
      AttributedUrl(
          url: _baseUrl + 'apiaceae_heracleum.jpg',
          attribution: 'commons.wikimedia.org/wiki/User:Llez'),
      AttributedUrl(
          url: _baseUrl + 'apiaceae_osmorhiza.jpg',
          attribution: 'Mary Ellen (Mel) Harte, Bugwood.org'),
    ],
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
      AttributedUrl(
          url: _baseUrl + 'boraginaceae_phacelia.jpg',
          attribution: 'commons.wikimedia.org/wiki/User:Stan_Shebs'),
      AttributedUrl(
          url: _baseUrl + 'boraginaceae_amsinckia.jpg',
          attribution: 'Mary Ellen (Mel) Harte, Bugwood.org'),
      AttributedUrl(
          url: _baseUrl + 'boraginaceae_symphytum.jpg', attribution: null),
    ],
    'assets/images/boraginaceae.png',
  ),
  brassicaceae(
    'Brassicaceae',
    'Mustard Family, Cabbage Family, Crucifers',
    'https://en.wikipedia.org/wiki/Brassicaceae',
    'Flowers in clusters. 4 equal sized petals arranged in a cross, usually yellow, white, or pale.\n\n'
        '4 sepals which alternate between the petals.\n\n'
        'Usually 5 stamens. Superior ovary, which matures into a silique.\n\n'
        'Leaves alternate up the stem.',
    [
      GlossaryTerm.superiorOvary,
      GlossaryTerm.silique,
    ],
    [
      AttributedUrl(
          url: _baseUrl + 'brassicaceae_coincya.jpg',
          attribution: 'commons.wikimedia.org/wiki/User:Hectonichus'),
      AttributedUrl(
          url: _baseUrl + 'brassicaceae_erysimum.jpg', attribution: null),
      AttributedUrl(
          url: _baseUrl + 'brassicaceae_nasturtium.jpg',
          attribution:
              'Leslie J. Mehrhoff, University of Connecticut, Bugwood.org'),
    ],
    'assets/images/brassicaceae.png',
  ),
  caryophyllaceae(
    'Caryophyllaceae',
    'Pink Family, Carnation Family',
    'https://en.wikipedia.org/wiki/Caryophyllaceae',
    'Actinomorphic flower. Most with 5 petals and 5 sepals. Each petal is often notched or divided. Usually white or pink.\n\n'
        'Most have 10 stamens. Superior ovary, which ripens into a dry capsule, opened at the top.\n\n'
        'The leaves are simple, and in opposite pairs.',
    [
      GlossaryTerm.actinomorphic,
      GlossaryTerm.superiorOvary,
      GlossaryTerm.simpleLeaf,
    ],
    [
      AttributedUrl(
          url: _baseUrl + 'caryophyllaceae_cerastium.jpg',
          attribution: 'montereywildflowers.com/caryophyllaceae-misc'),
      AttributedUrl(
          url: _baseUrl + 'caryophyllaceae_silene.jpg',
          attribution: 'www.stridvall.se'),
      AttributedUrl(
          url: _baseUrl + 'caryophyllaceae_dianthus.jpg',
          attribution: 'David Cappaert, Bugwood.org'),
    ],
    'assets/images/caryophyllaceae.png',
  ),
  fabaceae(
    'Fabaceae',
    'Pea Family, Legumes',
    'https://en.wikipedia.org/wiki/Fabaceae',
    'Zygomorphic flowers. 5 petals in a characteristic layout: the banner, wings, and keel.\n\n'
        'The banner is the top petal, typically the largest.\n'
        'The 2 wings spread side to side.\n'
        'The keel is 2 petals fused to form a tube.\n\n'
        'The keel houses 10 stamens (often fused) and a pistil. '
        'Its superior ovary matures into typical pea pods.\n\n'
        'Leaves are pinnate or trifoliate, or pinnate.',
    [
      GlossaryTerm.zygomorphic,
      GlossaryTerm.superiorOvary,
      GlossaryTerm.trifoliate,
      GlossaryTerm.pinnate,
      GlossaryTerm.midrib,
    ],
    [
      AttributedUrl(
          url: _baseUrl + 'fabaceae_adesmia.jpg',
          attribution: 'Juan Campá, MGAP, Bugwood.org'),
      AttributedUrl(
          url: _baseUrl + 'fabaceae_hedysarum.jpg',
          attribution: 'commons.wikimedia.org/wiki/User:Hectonichus'),
      AttributedUrl(url: _baseUrl + 'fabaceae_lathyrus.jpg', attribution: null),
    ],
    'assets/images/fabaceae.png',
  ),
  lamiaceae(
    'Lamiaceae',
    'Mint Family, Sage Family',
    'https://en.wikipedia.org/wiki/Lamiaceae',
    'Zygomorphic flowers. Arranged in whorls around the stem. '
        'Petals often fused into a tube, with an upper & lower lip.\n\n'
        'The lower lip can act as a landing pad for pollinators.\n\n'
        'Usually 4 stamens, in pairs, with one pair shorter in length. 1 pistil. '
        'Sepals fused to form a calyx.\n\n'
        'Plant stems are square in cross–section. With serrate leaves in opposite pairs.',
    [
      GlossaryTerm.zygomorphic,
      GlossaryTerm.serrate,
      GlossaryTerm.whorl,
      GlossaryTerm.calyx
    ],
    [
      AttributedUrl(
          url: _baseUrl + 'lamiaceae_melittis.jpg',
          attribution: 'Pilar Alonso'),
      AttributedUrl(
          url: _baseUrl + 'lamiaceae_salvia.jpg',
          attribution:
              'Dobromir K. commons.wikimedia.org/wiki/File:Salvia_flower.jpg'),
      AttributedUrl(
          url: _baseUrl + 'lamiaceae_stachys.jpg',
          attribution:
              'commons.wikimedia.org/wiki/File:Stachys_palustris20110630_07.jpg'),
    ],
    'assets/images/lamiaceae.png',
  ),
  rosaceae(
    'Rosaceae',
    'Rose Family',
    'https://en.wikipedia.org/wiki/Rosaceae',
    'Zygomorphic and open flowers. Usually 5 petals and sepals. '
        'Often characterised by a large number of stamens.\n\n'
        'The serrated leaves can be simple or compound. '
        'They alternate on the steam, and often have thorns or similar.',
    [
      GlossaryTerm.zygomorphic,
      GlossaryTerm.openFlower,
      GlossaryTerm.serrate,
      GlossaryTerm.simpleLeaf,
      GlossaryTerm.compoundLeaf,
    ],
    [
      AttributedUrl(
          url: _baseUrl + 'rosaceae_rubus.jpg',
          attribution: 'Ansel Oommen, Bugwood.org'),
      AttributedUrl(
          url: _baseUrl + 'rosaceae_rosa.jpg',
          attribution:
              'William M. Ciesla, Forest Health Management International, Bugwood.org'),
      AttributedUrl(
          url: _baseUrl + 'rosaceae_raphiolepsis.jpg',
          attribution:
              'Dryas — commons.wikimedia.org/wiki/File:Rhaphiolepis_indica_RBGK.JPG'),
    ],
    'assets/images/rosaceae.png',
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

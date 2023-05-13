import '../data/families/apiaceae_data.dart';
import '../data/families/asteraceae_data.dart';
import '../data/families/boraginaceae_data.dart';
import '../data/families/brassicaceae_data.dart';
import '../data/families/caryophyllaceae_data.dart';
import '../data/families/ericaceae_data.dart';
import '../data/families/euphorbiaceae_data.dart';
import '../data/families/fabaceae_data.dart';
import '../data/families/geraniaceae_data.dart';
import '../data/families/lamiaceae_data.dart';
import '../data/families/malvaceae_data.dart';
import '../data/families/onagraceae_data.dart';
import '../data/families/orchidaceae_data.dart';
import '../data/families/polygonaceae_data.dart';
import '../data/families/ranunculaceae_data.dart';
import '../data/families/rosaceae_data.dart';
import '../data/network/network_data.dart';
import 'attributed_url.dart';
import 'glossary_term.dart';
import 'species.dart';

enum Family {
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
      AttributedUrl(url: baseFamilyUrl + 'apiaceae_anethum.jpg', attribution: null),
      AttributedUrl(
          url: baseFamilyUrl + 'apiaceae_heracleum.jpg',
          attribution: 'commons.wikimedia.org/wiki/User:Llez'),
      AttributedUrl(
          url: baseFamilyUrl + 'apiaceae_osmorhiza.jpg',
          attribution: 'Mary Ellen (Mel) Harte, Bugwood.org'),
    ],
    ApiaceaeData.speciesList,
    'assets/images/apiaceae.png',
  ),
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
          url: baseFamilyUrl + 'asteraceae_anuus.jpg',
          attribution: 'commons.wikimedia.org/wiki/User:Dalgial'),
      AttributedUrl(
          url: baseFamilyUrl + 'asteraceae_arnica.jpg',
          attribution: 'Mary Ellen (Mel) Harte, Bugwood.org'),
      AttributedUrl(
          url: baseFamilyUrl + 'asteraceae_centaurea.jpg',
          attribution: 'Rob Routledge, Sault College, Bugwood.org'),
    ],
    AsteraceaeData.speciesList,
    'assets/images/asteraceae.png',
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
          url: baseFamilyUrl + 'boraginaceae_phacelia.jpg',
          attribution: 'commons.wikimedia.org/wiki/User:Stan_Shebs'),
      AttributedUrl(
          url: baseFamilyUrl + 'boraginaceae_amsinckia.jpg',
          attribution: 'Mary Ellen (Mel) Harte, Bugwood.org'),
      AttributedUrl(
          url: baseFamilyUrl + 'boraginaceae_symphytum.jpg', attribution: null),
    ],
    BoraginaceaeData.speciesList,
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
          url: baseFamilyUrl + 'brassicaceae_coincya.jpg',
          attribution: 'commons.wikimedia.org/wiki/User:Hectonichus'),
      AttributedUrl(
          url: baseFamilyUrl + 'brassicaceae_erysimum.jpg', attribution: null),
      AttributedUrl(
          url: baseFamilyUrl + 'brassicaceae_nasturtium.jpg',
          attribution:
              'Leslie J. Mehrhoff, University of Connecticut, Bugwood.org'),
    ],
    BrassicaceaeData.speciesList,
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
          url: baseFamilyUrl + 'caryophyllaceae_cerastium.jpg',
          attribution: 'montereywildflowers.com/caryophyllaceae-misc'),
      AttributedUrl(
          url: baseFamilyUrl + 'caryophyllaceae_silene.jpg',
          attribution: 'www.stridvall.se'),
      AttributedUrl(
          url: baseFamilyUrl + 'caryophyllaceae_dianthus.jpg',
          attribution: 'David Cappaert, Bugwood.org'),
    ],
    CaryophyllaceaeData.speciesList,
    'assets/images/caryophyllaceae.png',
  ),
  ericaceae(
    'Ericaceae',
    'Heath Family, Blueberry Family',
    'https://en.wikipedia.org/wiki/Ericaceae',
    'Flowers often urn/bell shaped, with 4 or 5 petals fused together. Usually white or pink.\n\n'
        '5 stamens. Superior ovary, which ripens into a berry or capsule.\n\n'
        'Leaves are simple, and often evergreen.',
    [
      GlossaryTerm.superiorOvary,
      GlossaryTerm.simpleLeaf,
    ],
    [
      AttributedUrl(
          url: baseFamilyUrl + 'ericaceae_arctostaphylos.jpg',
          attribution: '© Julia Carr (CC-BY-NC)'),
      AttributedUrl(
          url: baseFamilyUrl + 'ericaceae_arbutus.jpg',
          attribution: '© fern1956 (CC-BY-NC)'),
      AttributedUrl(
          url: baseFamilyUrl + 'ericaceae_gaultheria.jpg',
          attribution: '© Dennis White (CC-BY-NC)'),
    ],
    EricaceaeData.speciesList,
    'assets/images/ericaceae.png',
  ),
  euphorbiaceae(
    'Euphorbiaceae',
    'Spurge Family',
    'https://en.wikipedia.org/wiki/Euphorbiaceae',
    'Actinomorphic unisex flowers. No petals or sepals, but instead have'
        ' bracts that may be brightly colored and appear petal-like. Often pale green.\n\n'
        'Superior ovary. Many excrete a milky latex/sap when broken.\n\n'
        'Leaves often lanceolate. Flowers formed as a \'cyathium\'.',
    [
      GlossaryTerm.actinomorphic,
      GlossaryTerm.unisex,
      GlossaryTerm.bract,
      GlossaryTerm.superiorOvary,
      GlossaryTerm.lanceolate,
      GlossaryTerm.cyathium,
    ],
    [
      AttributedUrl(
          url: baseFamilyUrl + 'euphorbiaceae_segetalis.jpg',
          attribution: '© rudyclaeys (CC-BY-NC)'),
      AttributedUrl(
          url: baseFamilyUrl + 'euphorbiaceae_lathyris.jpg',
          attribution: '© Valentina (CC-BY-NC)'),
      AttributedUrl(
          url: baseFamilyUrl + 'euphorbiaceae_nicaeensis.jpg',
          attribution: '© sbrogers725 (CC-BY-NC)'),
    ],
    EuphorbiaceaeData.speciesList,
    'assets/images/euphorbiaceae.png',
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
          url: baseFamilyUrl + 'fabaceae_adesmia.jpg',
          attribution: 'Juan Campá, MGAP, Bugwood.org'),
      AttributedUrl(
          url: baseFamilyUrl + 'fabaceae_hedysarum.jpg',
          attribution: 'commons.wikimedia.org/wiki/User:Hectonichus'),
      AttributedUrl(url: baseFamilyUrl + 'fabaceae_lathyrus.jpg', attribution: null),
    ],
    FabaceaeData.speciesList,
    'assets/images/fabaceae.png',
  ),
  geraniaceae(
    'Geraniaceae',
    'Geranium Family',
    'https://en.wikipedia.org/wiki/Geraniaceae',
    'Actinomorphic and open flowers. 5 petals, usually pink or purple. 5 separate sepals.\n\n'
        '10 stamens (fused at the base). Superior ovary.\n\n'
        'Leaves are palmately lobed.',
    [
      GlossaryTerm.actinomorphic,
      GlossaryTerm.open,
      GlossaryTerm.superiorOvary,
      GlossaryTerm.palmate,
      GlossaryTerm.lobedLeaf,
    ],
    [
      AttributedUrl(
          url: baseFamilyUrl + 'geraniaceae_sanguineum.jpg',
          attribution: '© roywe (CC-BY-NC)'),
      AttributedUrl(
          url: baseFamilyUrl + 'geraniaceae_potentilloides.jpg',
          attribution: '© georgetelehin (CC-BY-NC)'),
      AttributedUrl(url: baseFamilyUrl + 'geraniaceae_pelargonium.jpg',
          attribution: '© happy_wanderer (CC-BY-NC)'),
    ],
    GeraniaceaeData.speciesList,
    'assets/images/geraniaceae.png',
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
          url: baseFamilyUrl + 'lamiaceae_melittis.jpg',
          attribution: 'Pilar Alonso'),
      AttributedUrl(
          url: baseFamilyUrl + 'lamiaceae_salvia.jpg',
          attribution:
              'Dobromir K. commons.wikimedia.org/wiki/File:Salvia_flower.jpg'),
      AttributedUrl(
          url: baseFamilyUrl + 'lamiaceae_stachys.jpg',
          attribution:
              'commons.wikimedia.org/wiki/File:Stachys_palustris20110630_07.jpg'),
    ],
    LamiaceaeData.speciesList,
    'assets/images/lamiaceae.png',
  ),
  malvaceae(
    'Malvaceae',
    'Mallow Family',
    'https://en.wikipedia.org/wiki/Malvaceae',
    'Actinomorphic flowers. 5 separate petals.\n\n'
        'Many stamens fused into a tube around the pistil. '
        'Superior ovary.\n\n'
        'Leaves are palmately lobed/veined.',
    [
      GlossaryTerm.actinomorphic,
      GlossaryTerm.superiorOvary,
      GlossaryTerm.palmate,
      GlossaryTerm.lobedLeaf,
    ],
    [
      AttributedUrl(
          url: baseFamilyUrl + 'malvaceae_multiflora.jpg',
          attribution: '© Quentin Scouflaire (CC-BY-NC)'),
      AttributedUrl(
          url: baseFamilyUrl + 'malvaceae_althaea.jpg',
          attribution: '© Detlev Metzing (CC-BY-NC)'),
      AttributedUrl(
          url: baseFamilyUrl + 'malvaceae_sphaeralcae.jpg',
          attribution: '© ramblinbotany (CC-BY-NC)'),
    ],
    MalvaceaeData.speciesList,
    'assets/images/malvaceae.png',
  ),
  onagraceae(
    'Onagraceae',
    'Evening Primrose Family',
    'https://en.wikipedia.org/wiki/Onagraceae',
    'Typically actinomorphic, with flower parts in multiples of 4. '
        '4 sepals, 4 petals, 4/8 stamens, 4 stigma lobes.\n\n'
        'Superior ovary. Leaves are simple and often pointy.',
    [
      GlossaryTerm.actinomorphic,
      GlossaryTerm.stigma,
      GlossaryTerm.superiorOvary,
      GlossaryTerm.simpleLeaf,
    ],
    [
      AttributedUrl(
          url: baseFamilyUrl + 'onagraceae_epilobium.jpg',
          attribution: '© Keith Lester (CC-BY-NC)'),
      AttributedUrl(
          url: baseFamilyUrl + 'onagraceae_chamaenerion.jpg',
          attribution: '© Johannes Lund Rasmussen (CC-BY-NC)'),
      AttributedUrl(
          url: baseFamilyUrl + 'onagraceae_oenothera.jpg',
          attribution: '© Jovaras Večkys (CC-BY-NC)'),
    ],
    OnagraceaeData.speciesList,
    'assets/images/onagraceae.png',
  ),
  orchidaceae(
    'Orchidaceae',
    'Orchid Family',
    'https://en.wikipedia.org/wiki/Orchidaceae',
    'A huge family of monocots with zygomorphic flowers. Can be single or compound, often arranged in a spike or raceme.\n\n'
        'The flower is composed of 3 sepals and 3 petals. '
        'The stamens and pistil are fused into a column. '
        'The lower petal is the lip, which is often highly modified.\n\n'
        'The lip is often a landing pad for pollinators.\n\n'
        'The leaves are simple, and in opposite pairs.',
    [
      GlossaryTerm.monocot,
      GlossaryTerm.zygomorphic,
      GlossaryTerm.spike,
      GlossaryTerm.raceme,
    ],
    [
      AttributedUrl(
          url: baseFamilyUrl + 'orchidaceae_orchis.jpg',
          attribution: '© Яна Брезицкая (CC-BY-NC)'),
      AttributedUrl(
          url: baseFamilyUrl + 'orchidaceae_cypripedium.jpg',
          attribution: '© Anne-Hélène Paradis (CC-BY-NC)'),
      AttributedUrl(
          url: baseFamilyUrl + 'orchidaceae_neotinea.jpg',
          attribution:
              '© yanndu (CC-BY-NC)'),
      AttributedUrl(
          url: baseFamilyUrl + 'orchidaceae_anacamptis.jpg',
          attribution:
              '© chelle_1661, some rights reserved (CC-BY-NC)'),
    ],
    OrchidaceaeData.speciesList,
    'assets/images/orchidaceae.png',
  ),
  polygonaceae(
    'Polygonaceae',
    'Knotweed Family',
    'https://en.wikipedia.org/wiki/Polygonaceae',
    'Flowers typically in clusters on stems. No defined petals or sepals, but often 3–6 tepals.\n\n'
        '6–9 stamens. 1 pistil. Superior ovary.\n\n'
        'Leaves are simple. Nodes are often swollen, with a papery sheath (stipule) around the stem.',
    [
      GlossaryTerm.tepal,
      GlossaryTerm.superiorOvary,
      GlossaryTerm.simpleLeaf,
      GlossaryTerm.node,
      GlossaryTerm.stipule,
    ],
    [
      AttributedUrl(
          url: baseFamilyUrl + 'polygonaceae_rumex.jpg',
          attribution: '© jfgodeau (CC-BY-NC)'),
      AttributedUrl(
          url: baseFamilyUrl + 'polygonaceae_persicaria.jpg',
          attribution: '© Alexey P. Seregin (CC-BY-NC)'),
      AttributedUrl(
          url: baseFamilyUrl + 'polygonaceae_maculosa.jpg',
          attribution:
              '© francesedana (CC-BY-NC)'),
      AttributedUrl(
          url: baseFamilyUrl + 'polygonaceae_fagopyrum.jpg',
          attribution:
              '© eugenezakharov (CC-BY-NC)'),
    ],
    PolygonaceaeData.speciesList,
    'assets/images/polygonaceae.png',
  ),
  ranunculaceae(
    'Ranunculaceae',
    'Buttercup Family',
    'https://en.wikipedia.org/wiki/Ranunculaceae',
    'Usually Actinomorphic flowers. Often yellow. Typically 5 (glossy) petals and 5 sepals. '
        'Many stamens. Many carpels.\n\n'
        'The leaves are lobed.',
    [
      GlossaryTerm.actinomorphic,
      GlossaryTerm.carpel,
      GlossaryTerm.lobedLeaf,
    ],
    [
      AttributedUrl(
          url: baseFamilyUrl + 'ranunculaceae_ranunculus.jpg',
          attribution: 'Leslie J. Mehrhoff, University of Connecticut, Bugwood.org'),
      AttributedUrl(
          url: baseFamilyUrl + 'ranunculaceae_anemone.jpg',
          attribution: 'Boris Gaberšček, tecen.si'),
      AttributedUrl(
          url: baseFamilyUrl + 'ranunculaceae_anemonoides.jpg',
          attribution: 'David Eberly'),
    ],
    RanunculaceaeData.speciesList,
    'assets/images/ranunculaceae.png',
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
          url: baseFamilyUrl + 'rosaceae_rubus.jpg',
          attribution: 'Ansel Oommen, Bugwood.org'),
      AttributedUrl(
          url: baseFamilyUrl + 'rosaceae_rosa.jpg',
          attribution:
              'William M. Ciesla, Forest Health Management International, Bugwood.org'),
      AttributedUrl(
          url: baseFamilyUrl + 'rosaceae_raphiolepsis.jpg',
          attribution:
              'Dryas — commons.wikimedia.org/wiki/File:Rhaphiolepis_indica_RBGK.JPG'),
    ],
    RosaceaeData.speciesList,
    'assets/images/rosaceae.png',
  );

  final String latinName;
  final String commonName;
  final String wikiUrl;
  final String description;
  final List<GlossaryTerm> glossaryTerms;
  final List<AttributedUrl> images;
  final List<Species> speciesList;
  final String assetImgPath;

  const Family(
    this.latinName,
    this.commonName,
    this.wikiUrl,
    this.description,
    this.glossaryTerms,
    this.images,
    this.speciesList,
    this.assetImgPath,
  );
}
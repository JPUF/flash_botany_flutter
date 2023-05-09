

enum GlossaryTerm {
  actinomorphic('Actinomorphic',
      'Radially symmetrical. The flower is mirrored in 3 planes or more.'),
  zygomorphic('Zygomorphic',
      'Bilaterally symmetrical. The flower is only mirrored in one plane.'),
  tepal('Tepal',
      'The petals and sepals of a flower, when they are indistinguishable from each other.'),
  node('Node',
      'The point at which a leaf/flower attaches to the stem.'),
  stipule('Stipule',
      'A small leaf-like structure at the base of a leaf stalk.'),
  monocot('Monocot',
      'One of the two major groups of flowering plants. Monocots have one cotyledon (leaf when sprouting).\n'
          'They typically have long narrow leaves with parallel veins, and flower parts in multiples of 3.'),
  openFlower('Open flower',
      'When the reproductive parts are visible, with unfolded organs. E.g. no tubes.'),
  inflorescence(
      'Inflorescence', 'A grouped unit of numerous individual flowers.'),
  bract('Bract',
      'A small leaf-like structure beneath a flower. Sometimes called a phyllary.'),
  involucre('Involucre',
      'A cup formed of one or many layers/series of bracts/phyllaries.'),
  serrate('Serrate', 'The leaf margin resembles a saw.'),
  pinnate('Pinnate', 'Multiple leaflets arranged either side of the midrib.'),
  trifoliate('Trifoliate', 'Each leaf is composed of 3 leaflets.'),
  midrib('Midrib', 'A leaf’s central vein.'),
  open('Open', 'A flower with clearly visible & accessible reproductive parts.'),
  whorl('Whorl', 'Arranged in a ring.'),
  corolla('Corolla', 'The collective term for the petals of a flower.'),
  spike('Spike', 'Flowers arranged in a long, unbranched stem, with each flower attached directly to the stem.'),
  raceme('Raceme', 'Flowers arranged along a central stalk, with each flower attached to a small stalk of its own, called a pedicel.'),
  calyx('Calyx',
      'The collective term for the sepals of a flower. A cup–like green whorl that acts as a layer of protection over the petals.'),
  carpel('Carpel',
      'The female reproductive organ of a flower. Made of the ovary, style, and stigma.'),
  umbel('Umbel',
      'An inflorescence where the stem of each flower originates from a shared point. Resembles an umbrella. Compound umbels have an umbel on each stem.'),
  scorpioidCyme('Scorpioid cyme',
      'The flower stem is coiled like a scorpion tail. Flowers at the tip mature first. Always on the convex side of the coil.'),
  superiorOvary('Superior ovary',
      'The seed containing organ is above where other organs (petals, sepals, etc) are attached.'),
  inferiorOvary('Inferior ovary',
      'The seed containing organ is beneath where other organs (petals, sepals, etc) are attached.'),
  silique('Silique', 'A long and thin seed capsule or fruit.'),
  simpleLeaf('Simple leaf', 'The leaf is not divided.'),
  lobedLeaf('Lobed leaf', 'Divided into distinct sections, each typically separated by a deep indentation. Can be either rounded or pointed and may have smooth or serrated margins.'),
  palmate('Palmate', 'Leaf/leaflets arranged like fingers on a hand.'),
  compoundLeaf('Compound leaf', 'The leaf is divided into 2 or more leaflets.'),
  floret(
      'Floret', 'A flower that is part of a cluster or collection of flowers.'),
  rayFloret(
      'Ray floret',
      'Florets with a conspicuous petal (5 petals fused). '
          'These often form the outermost ring of a capitulum.'),
  discFloret('Disc floret', 'Florets with inconspicuous petals.');

  final String term;
  final String definition;

  const GlossaryTerm(this.term, this.definition);
}

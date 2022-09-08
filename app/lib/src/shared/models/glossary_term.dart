enum GlossaryTerm {
  actinomorphic('Actinomorphic', 'Radially symmetrical. The flower is mirrored in 3 planes or more.'),
  zygomorphic('Zygomorphic', 'Bilaterally symmetrical. The flower is only mirrored in one plane.'),
  inflorescence('Inflorescence', 'A grouped unit of numerous individual flowers.'),
  bract('Bract', 'A small leaf-like structure beneath a flower. Sometimes called a phyllary.'),
  involucre('Involucre', 'A cup formed of one or many layers/series of bracts/phyllaries.'),
  serrate('Serrate', 'The leaf margin resembles a saw.'),
  whorl('Whorl', 'Arranged in a ring.'),
  corolla('Corolla', 'The collective term for the petals of a flower.'),
  calyx('Calyx', 'The collective term for the sepals of a flower. A cup–like green whorl that acts as a layer of protection over the petals.'),
  umbel('Umbel', 'An inflorescence where the stem of each flower originates from a shared point. Resembles an umbrella. Compound umbels have an umbel on each stem.'),
  scorpioidCyme('Scorpioid cyme', 'The flower stem is coiled like a scorpion tail. Flowers at the tip mature first. Always on the convex side of the coil.'),
  superiorOvary('Superior ovary', 'The seed containing organ is above where other organs (petals, sepals, etc) are attached.'),
  inferiorOvary('Inferior ovary', 'The seed containing organ is beneath where other organs (petals, sepals, etc) are attached.'),
  silique('Silique', 'A long and thin seed capsule or fruit.'),
  simpleLeaf('Simple leaf', 'The leaf is not divided.'),
  floret('Floret', 'A flower that is part of a cluster or collection of flowers.'),
  rayFloret('Ray floret', 'Florets with a conspicuous petal (5 petals fused). '
      'These often form the outermost ring of a capitulum.'),
  discFloret('Disc floret', 'Florets with inconspicuous petals.');
  final String term;
  final String definition;

  const GlossaryTerm(this.term, this.definition);
}
enum GlossaryTerm {
  zygomorphic('Zygomorphic', 'Bilaterally symmetrical. The flower is only mirrored in one plane.'),
  bract('Bract', 'A small leaf-like structure beneath a flower. Sometimes called a phyllary.'),
  involucre('Involucre', 'A cup formed of one or many layers/series of bracts/phyllaries.'),
  serrate('Serrate', 'The leaf margin resembles a saw.'),
  whorl('Whorl', 'Arranged in a ring'),
  calyx('Calyx', 'A cup–like green whorl that acts as a layer of protection over the petals'),
  floret('Floret', 'A flower that is part of a cluster or collection of flowers'),
  rayFloret('Ray floret', 'Florets with a conspicuous petal (5 petals fused). '
      'These often form the outermost ring of a capitulum.'),
  discFloret('Disc floret', 'Florets with inconspicuous petals.');
  final String term;
  final String definition;

  const GlossaryTerm(this.term, this.definition);
}
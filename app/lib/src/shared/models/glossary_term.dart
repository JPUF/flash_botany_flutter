enum GlossaryTerm {
  zygomorphic('Zygomorphic', 'Bilaterally symmetrical. The flower is only mirrored in one plane.'),
  bract('Bract', 'A papery little leaf thing'),
  serrate('Serrate', 'The leaf margin resembles a saw.'),
  whorl('Whorl', 'Arranged in a ring'),
  calyx('Calyx', 'A cup–like green whorl that acts as a layer of protection over the petals'),
  floret('Floret', 'A flower that is part of a cluster or collection of flowers');
  final String term;
  final String definition;

  const GlossaryTerm(this.term, this.definition);
}
enum GlossaryTerm {
  bract('Bract', 'A papery little leaf thing'),
  floret('Floret', 'A flower that is part of a cluster or collection of flowers');
  final String term;
  final String definition;

  const GlossaryTerm(this.term, this.definition);
}
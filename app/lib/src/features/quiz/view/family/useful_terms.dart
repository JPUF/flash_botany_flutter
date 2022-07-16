import 'package:flutter/material.dart';

import '../../../../shared/extensions.dart';
import '../../../../shared/models/glossary_term.dart';

class UsefulTerms extends StatelessWidget {
  const UsefulTerms({Key? key, required this.terms}) : super(key: key);

  final List<GlossaryTerm> terms;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsetsDirectional.only(start: 8),
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: terms.length,
      itemBuilder: (_, i) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeader(terms[i].term, context),
          buildDefinition(terms[i].definition, context)
        ],
      ),
    );
  }

  Widget buildDefinition(String definition, BuildContext context) {
    return Text(definition, style: context.bodySmall);
  }

  Widget buildHeader(String term, BuildContext context) {
    return Text(term,
        style: context.labelLarge?.apply(
          fontStyle: FontStyle.italic,
        ));
  }
}

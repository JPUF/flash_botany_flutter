import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/extensions.dart';
import '../../../../shared/external.dart';
import '../../../../shared/models/family.dart';
import '../../../home/components/family_button.dart';
import 'family_info_images.dart';
import 'useful_terms.dart';

class FamilyInfo extends StatelessWidget {
  const FamilyInfo({Key? key, required this.family}) : super(key: key);

  final Family family;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          const SizedBox(height: 16),
          buildTitleRow(context),
          Text(family.commonName,
              style: context.labelLarge?.apply(fontStyle: FontStyle.italic)),
          const SizedBox(height: 32),
          Text(family.description, style: context.bodyMedium),
          const SizedBox(height: 32),
          Visibility(
            visible: family.glossaryTerms.isNotEmpty,
            child: Text('Useful terms:', style: context.headlineSmall),
          ),
          UsefulTerms(terms: family.glossaryTerms),
          const SizedBox(height: 32),
          FamilyInfoImages(urls: family.exampleUrls),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget buildTitleRow(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return FittedBox(
      alignment: AlignmentDirectional.centerStart,
      fit: BoxFit.scaleDown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(family.latinName,
              style: context.headlineLarge?.apply(fontStyle: FontStyle.italic)),
          const SizedBox(width: 16),
          IconButton(
            padding: const EdgeInsetsDirectional.only(start: 8),
            onPressed: () => launchExternalUrl(family.wikiUrl),
            icon: SvgPicture.asset(
              'assets/images/wiki_logo.svg',
              semanticsLabel: 'Wikipedia',
              color: colors.onBackground,
            ),
          )
        ],
      ),
    );
  }
}

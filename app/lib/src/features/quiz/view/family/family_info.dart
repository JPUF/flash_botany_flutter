import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/extensions.dart';
import '../../../../shared/external.dart';
import '../../../../shared/models/family.dart';
import '../../../../shared/strings.dart';
import 'family_info_images.dart';
import 'useful_terms.dart';

class FamilyInfo extends StatelessWidget {
  const FamilyInfo({Key? key, required this.family}) : super(key: key);

  final Family family;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final List<Widget> attributionTexts = family.images
        .map((i) => Visibility(
              visible: i.attribution != null,
              child: Text(
                i.attribution ?? '',
                style: context.attributionLabelFaded,
              ),
            ))
        .toList();
    final attributionColumn = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: attributionTexts,
      ),
    );
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
          const SizedBox(height: 16),
          familyCircleImage(colors.onInverseSurface),
          const SizedBox(height: 16),
          Visibility(
            visible: family.glossaryTerms.isNotEmpty,
            child: Text(Strings.usefulTerms, style: context.headlineSmall),
          ),
          UsefulTerms(terms: family.glossaryTerms),
          const SizedBox(height: 32),
          FamilyInfoImages(urls: family.images.map((i) => i.url).toList()),
          const SizedBox(height: 16),
          Visibility(
            visible: attributionTexts.isNotEmpty,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.attributions,
                  style: context.attributionLabelFaded,
                ),
                attributionColumn,
                const SizedBox(height: 8),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container familyCircleImage(Color color) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
      child: ClipOval(
        child: Image(
          image: AssetImage(family.assetImgPath),
          width: 75,
          height: 75,
        ),
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

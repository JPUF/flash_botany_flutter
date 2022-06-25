import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/extensions.dart';
import '../../../../shared/external.dart';
import '../../../../shared/models/family.dart';

class FamilyInfo extends StatelessWidget {
  const FamilyInfo({Key? key, required this.family}) : super(key: key);

  final Family family;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
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
          FamilyInfoImages(urls: family.exampleUrls),
          const SizedBox(height: 32),
          _dummyRichText(context, colors),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  RichText _dummyRichText(BuildContext context, ColorScheme colors) {
    return RichText(
        text: TextSpan(
      children: [
        TextSpan(
            style: context.bodyMedium,
            text:
                'The disk of florets is typically surrounded by one or many series/layers of '),
        TextSpan(
            style: context.bodyMedium?.apply(
              color: colors.tertiary,
              fontWeightDelta: 200,
            ),
            text: 'bracts',
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                showDialog<AlertDialog>(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: const Text('Bract'),
                          content: const Text('A papery little leafy thing'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('OK'),
                            )
                          ],
                        ));
              }),
        TextSpan(style: context.bodyMedium, text: '.'),
      ],
    ));
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
          IconButton(
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

class FamilyInfoImages extends StatelessWidget {
  const FamilyInfoImages({Key? key, required this.urls}) : super(key: key);

  final List<String> urls;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, __) => const SizedBox(height: 16),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: urls.length,
      itemBuilder: (_, i) => ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: CachedNetworkImage(imageUrl: urls[i])),
    );
  }
}

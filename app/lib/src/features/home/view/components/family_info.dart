import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../shared/extensions.dart';

class FamilyInfo extends StatelessWidget {
  FamilyInfo({
    Key? key,
  }) : super(key: key);

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
          Text('Daisy Family, Sunflower Family, Compositae',
              style: context.labelLarge?.apply(fontStyle: FontStyle.italic)),
          const SizedBox(height: 32),
          Text(
            'What appears as one flower is actually a composite of many individual florets, growing on a disk.\n\nThe disk of florets is typically surrounded by one or many series/layers of bracts.',
            style: context.bodyMedium,
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget buildTitleRow(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Asteraceae',
            style: context.headlineLarge?.apply(fontStyle: FontStyle.italic)),
        IconButton(
          onPressed: () {
            _launchUrl('https://en.wikipedia.org/wiki/Asteraceae');
          },
          icon: SvgPicture.asset(
            'assets/images/wiki_logo.svg',
            semanticsLabel: 'Wikipedia',
            color: colors.onBackground,
          ),
        )
      ],
    );
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri)) throw 'Could not launch $uri';
  }
}

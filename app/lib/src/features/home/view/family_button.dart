import 'package:flutter/material.dart';

import '../../../shared/extensions.dart';
import '../../../shared/models/family.dart';

class FamilyButton extends StatelessWidget {
  const FamilyButton({
    Key? key,
    required this.family,
  }) : super(key: key);

  final Family family;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: colors.onSecondary,
                  radius: 50,
                ),
                CircleAvatar(
                    radius: 42, foregroundImage: AssetImage(family.assetImgPath)),
              ],
            ),
            Text(family.latinName,
                style: context.headlineSmall?.apply(fontStyle: FontStyle.italic))
          ],
        ),
      ),
    );
  }
}

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
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: FamilyButtonForeground(family: family),
      ),
    );
  }
}

class FamilyButtonForeground extends StatelessWidget {
  const FamilyButtonForeground({Key? key, required this.family})
      : super(key: key);

  final Family family;

  @override
  Widget build(BuildContext context) {
    final textStyle = context.headlineSmall?.apply(fontStyle: FontStyle.italic);
    return Column(
      children: [
        BorderedCircleImage(family: family),
        Text(family.latinName, style: textStyle),
      ],
    );
  }
}

class BorderedCircleImage extends StatelessWidget {
  const BorderedCircleImage({Key? key, required this.family}) : super(key: key);

  final Family family;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          backgroundColor: colors.onSecondary,
          radius: 50,
        ),
        CircleAvatar(
            radius: 42, foregroundImage: AssetImage(family.assetImgPath)),
      ],
    );
  }
}

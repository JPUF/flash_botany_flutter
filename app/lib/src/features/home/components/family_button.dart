import 'package:flutter/material.dart';

import '../../../shared/extensions.dart';
import '../../../shared/models/family.dart';

class FamilyButton extends StatelessWidget {
  const FamilyButton({
    Key? key,
    required this.family,
    required this.onTap,
  }) : super(key: key);

  final Family family;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const FamilyButtonBackground(),
              FamilyButtonForeground(family: family),
            ],
          ),
        ),
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
    final colors = Theme.of(context).colorScheme;
    return Column(
      children: [
        CircleAvatar(
          radius: 75,
          foregroundImage: AssetImage(family.assetImgPath),
          backgroundColor: colors.onInverseSurface,
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(family.latinName, style: textStyle)),
        ),
      ],
    );
  }
}

class FamilyButtonBackground extends StatelessWidget {
  const FamilyButtonBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: FractionallySizedBox(
        heightFactor: 0.8,
        alignment: Alignment.bottomCenter,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            color: colors.onInverseSurface,
          ),
        ),
      ),
    );
  }
}

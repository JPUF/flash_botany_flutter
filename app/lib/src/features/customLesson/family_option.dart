import 'package:flutter/material.dart';

import '../../shared/extensions.dart';
import '../../shared/models/family.dart';

class FamilyOption extends StatelessWidget {
  const FamilyOption({
    Key? key,
    required this.family,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  final Family family;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    //TODO ripple effect
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            color: Theme.of(context).colorScheme.onInverseSurface,
            padding: const EdgeInsets.all(4),
            child: Stack(
              alignment: Alignment.center,
              children: [
                _FamilyOptionContent(family: family),
                if (isSelected)
                  const Align(alignment: Alignment.centerRight,
                      child: Icon(Icons.check_circle, color: Colors.green, size: 24)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _FamilyOptionContent extends StatelessWidget {
  const _FamilyOptionContent({required this.family});

  final Family family;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            foregroundImage: AssetImage(family.assetImgPath),
            backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
          ),
          const SizedBox(height: 8),
          Text(family.latinName, style: context.titleMedium),
          const SizedBox(height: 4),
        ],
      ),
    );
  }
}

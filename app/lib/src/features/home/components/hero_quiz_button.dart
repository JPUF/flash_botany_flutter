import 'package:flutter/material.dart';

import '../../../shared/extensions.dart';
import '../../../shared/strings.dart';

class HeroQuizButton extends StatelessWidget {
  const HeroQuizButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {

    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Material(
        child: InkWell(
          onTap: onTap,
          child: const HeroButtonContent(),
        ),
      ),
    );
  }
}

class HeroButtonContent extends StatelessWidget {
  const HeroButtonContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
        padding: const EdgeInsets.all(16),
        height: 150,
        color: colors.onInverseSurface,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              Strings.heroCta,
              textAlign: TextAlign.center,
              style: context.headlineMedium,
            ),
            const Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Icon(Icons.chevron_right_rounded, size: 64)),
          ],
        ));
  }
}

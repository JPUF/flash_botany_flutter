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
  Widget build(BuildContext context) => Card(
        elevation: 4,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Material(
          child: InkWell(
            onTap: onTap,
            child: const HeroButtonContent(),
          ),
        ),
      );
}

class HeroButtonContent extends StatelessWidget {
  const HeroButtonContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16),
        height: 150,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Strings.allLessonCta,
                  textAlign: TextAlign.center,
                  style: context.headlineMedium,
                ),
                const SizedBox(height: 16),
                Text(
                  Strings.allLessonSubheader,
                  textAlign: TextAlign.center,
                  style: context.bodyLarge,
                ),
              ],
            ),
            const Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Icon(Icons.chevron_right_rounded, size: 64)),
          ],
        ));
  }
}

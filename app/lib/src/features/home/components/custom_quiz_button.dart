import 'package:flutter/material.dart';

import '../../../shared/extensions.dart';
import '../../../shared/strings.dart';

class CustomQuizButton extends StatelessWidget {
  const CustomQuizButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => Card(
        elevation: 4,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Material(
          child: InkWell(
            onTap: onTap,
            child: const CustomButtonContent(),
          ),
        ),
      );
}

class CustomButtonContent extends StatelessWidget {
  const CustomButtonContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Strings.customLessonCta,
                  textAlign: TextAlign.center,
                  style: context.headlineMedium,
                ),
                const SizedBox(height: 4),
                Text(
                  Strings.customLessonSubheader,
                  textAlign: TextAlign.center,
                  style: context.bodyLarge,
                ),
                const SizedBox(height: 4),
              ],
            ),
            const Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Icon(Icons.chevron_right_rounded, size: 64)),
          ],
        ));
  }
}

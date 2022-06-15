import 'package:flutter/material.dart';

import '../../../../shared/extensions.dart';
import 'custom_button.dart';

class FeedbackContainer extends StatelessWidget {
  const FeedbackContainer({
    Key? key,
    required this.onNext,
  }) : super(key: key);

  final VoidCallback onNext;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FittedBox(
            fit: BoxFit.scaleDown,
            child: Text('Correct, it\'s Asteraceae!',
                style: context.headlineMedium)),
        Row(
          children: [
            const Expanded(flex: 2, child: FeedbackSpecies()),
            Expanded(
              child: CustomButton(
                title: 'Next',
                bgColor: colors.tertiaryContainer,
                onTapped: onNext,
              ),
            )
          ],
        ),
      ],
    );
  }
}

class FeedbackSpecies extends StatelessWidget {
  const FeedbackSpecies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Encelia farinosa',
            style: context.headlineSmall?.apply(fontStyle: FontStyle.italic),
          ),
          Text('Brittlebush', style: context.headlineSmall),
        ],
      ),
    );
  }
}

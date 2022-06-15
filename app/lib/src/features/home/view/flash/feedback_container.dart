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
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Correct, it\'s Asteraceae!', style: context.headlineMedium),
          Text('Encelia farinosa',
              style: context.headlineSmall?.apply(fontStyle: FontStyle.italic)),
          FractionallySizedBox(
            widthFactor: 0.33,
            child: CustomButton(
              title: 'Next',
              bgColor: colors.tertiaryContainer,
              onTapped: onNext,
            ),
          )
        ],
      ),
    );
  }
}

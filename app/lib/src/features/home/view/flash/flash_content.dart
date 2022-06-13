import 'package:flutter/material.dart';

import 'answer_options.dart';
import 'prompt_scaffold.dart';

class FlashContent extends StatelessWidget {
  const FlashContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Expanded(flex: 5, child: PromptScaffold()),
        Expanded(flex: 2, child: AnswerOptions()),
      ],
    );
  }
}

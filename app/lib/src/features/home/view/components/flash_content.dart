import 'package:flutter/material.dart';

import '../../../../shared/extensions.dart';
import 'answer_button.dart';
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

class AnswerOptions extends StatelessWidget {
  const AnswerOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final columnWidth = constraints.isMobile ? 0.5 : 0.25;
      return Table(
        defaultColumnWidth: FractionColumnWidth(columnWidth),
        children: const [
          TableRow(children: [
            AnswerButton(answerTitle: 'Testeraceae'),
            AnswerButton(answerTitle: 'Lesteraceae'),
          ]),
          TableRow(children: [
            AnswerButton(answerTitle: 'Besteraceae'),
            AnswerButton(answerTitle: 'Festeraceae'),
          ])
        ],
      );
    });
  }
}

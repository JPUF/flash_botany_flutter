import 'package:flutter/material.dart';

import '../../../../shared/extensions.dart';
import 'answer_button.dart';

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

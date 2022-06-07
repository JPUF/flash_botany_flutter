import 'package:flutter/material.dart';

import 'answer_button.dart';

class FlashContent extends StatelessWidget {
  const FlashContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Expanded(flex: 5, child: Placeholder()),
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
    final colors = Theme.of(context).colorScheme;
    final tableBorder = BorderSide(width: 10, color: colors.surface);
    return Table(
      defaultColumnWidth: const FractionColumnWidth(0.5),
      border: TableBorder(
        verticalInside: tableBorder,
        horizontalInside: tableBorder,
        left: tableBorder,
        right: tableBorder,
      ),
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
  }
}
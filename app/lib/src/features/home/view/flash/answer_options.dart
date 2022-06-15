import 'package:flutter/material.dart';

import 'custom_button.dart';

class AnswerOptions extends StatelessWidget {
  const AnswerOptions({Key? key, required this.onAnswerSelected})
      : super(key: key);

  final VoidCallback onAnswerSelected;

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          CustomButton(title: 'Testeraceae', onTapped: onAnswerSelected),
          CustomButton(title: 'Lesteraceae', onTapped: onAnswerSelected),
        ]),
        TableRow(children: [
          CustomButton(title: 'Besteraceae', onTapped: onAnswerSelected),
          CustomButton(title: 'Festeraceae', onTapped: onAnswerSelected),
        ])
      ],
    );
  }
}

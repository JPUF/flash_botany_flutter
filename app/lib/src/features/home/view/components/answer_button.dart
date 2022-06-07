import 'package:flutter/material.dart';

import '../../../../shared/extensions.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    Key? key,
    required this.answerTitle,
  }) : super(key: key);

  final String answerTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      color: Colors.purple,
      alignment: AlignmentDirectional.center,
      child: Text(
        answerTitle,
        style: context.labelLarge,
      ),
    );
  }
}

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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          height: 70,
          width: double.infinity,
          alignment: AlignmentDirectional.center,
          child: Text(
            answerTitle,
            style: context.headlineSmall?.apply(fontStyle: FontStyle.italic),
          ),
        ),
      ),
    );
  }
}

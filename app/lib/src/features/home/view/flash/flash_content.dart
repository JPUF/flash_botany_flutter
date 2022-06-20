import 'package:flash_botany/src/shared/blocs/prompt_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/extensions.dart';
import '../../../../shared/models/family.dart';
import 'answer_options.dart';
import 'feedback_container.dart';
import 'prompt_content.dart';

class FlashContent extends StatefulWidget {
  const FlashContent({
    Key? key,
  }) : super(key: key);

  @override
  State<FlashContent> createState() => _FlashContentState();
}

class _FlashContentState extends State<FlashContent> {
  bool _isAnswering = true;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return FractionallySizedBox(
        widthFactor: constraints.isMobile ? 1 : 0.5,
        child: Column(
          children: [
            const Expanded(flex: 5, child: PromptContent()),
            Expanded(
              flex: 2,
              child: _isAnswering
                  ? AnswerOptions(onAnswerSelected: onAnswerSelected)
                  : FeedbackContainer(onNext: onNext),
            ),
          ],
        ),
      );
    });
  }

  void onAnswerSelected() {
    setState(() => _isAnswering = false);
    BlocProvider.of<PromptBloc>(context)
        .add(const PromptEvent.getFeedback(Family.asteraceae));
  }

  void onNext() {
    setState(() => _isAnswering = true);
    BlocProvider.of<PromptBloc>(context).add(const PromptEvent.nextPrompt());
  }
}

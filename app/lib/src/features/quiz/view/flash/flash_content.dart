import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/blocs/prompt_bloc.dart';
import '../../../../shared/data/species_data.dart';
import '../../../../shared/extensions.dart';
import '../../../../shared/models/family.dart';
import '../../../../shared/models/species.dart';
import 'answer_options.dart';
import 'feedback_container.dart';
import 'prompt_content.dart';

class FlashContent extends StatefulWidget {
  const FlashContent({Key? key, required this.promptState}) : super(key: key);

  final PromptState promptState;

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
            Expanded(
              flex: 5,
              child: PromptContent(promptState: widget.promptState),
            ),
            Expanded(
              flex: 2,
              child: _isAnswering
                  ? AnswerOptions(onAnswerSelected: (f) => onAnswerSelected(f))
                  : FeedbackContainer(onNext: () {
                      onNext(widget.promptState.promptSpecies);
                    }),
            ),
          ],
        ),
      );
    });
  }

  void onAnswerSelected(Family family) {
    setState(() => _isAnswering = false);
    BlocProvider.of<PromptBloc>(context).add(PromptEvent.getFeedback(family));
  }

  void onNext(Species? currentSpecies) {
    setState(() => _isAnswering = true);
    final QuizId? localQuizId = widget.promptState.quizId;
    if (localQuizId != null) {
      BlocProvider.of<PromptBloc>(context).add(PromptEvent.nextPrompt(
        localQuizId,
        currentSpecies,
      ));
    }
  }
}

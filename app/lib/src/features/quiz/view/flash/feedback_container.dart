import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/blocs/prompt/prompt_bloc.dart';
import '../../../../shared/extensions.dart';
import '../../../../shared/models/species.dart';
import 'custom_button.dart';
import 'prompt_content.dart';

class FeedbackContainer extends StatefulWidget {
  const FeedbackContainer({
    Key? key,
    required this.onNext,
  }) : super(key: key);

  final VoidCallback onNext;

  @override
  State<FeedbackContainer> createState() => _FeedbackContainerState();
}

class _FeedbackContainerState extends State<FeedbackContainer> {
  bool _visible = false;
  final _duration = const Duration(milliseconds: 250);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() => _visible = true);
    });
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return AnimatedOpacity(
      curve: Curves.ease,
      duration: _duration,
      opacity: _visible ? 1.0 : 0.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: _feedbackText(),
          ),
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: BlocBuilder<PromptBloc, PromptState>(
                    builder: (context, state) {
                      final species = state.promptSpecies;
                      return species != null
                          ? FeedbackSpecies(species: species)
                          : const SizedLoadSpinner();
                    },
                  )),
              Expanded(
                child: CustomButton(
                  title: 'Next',
                  bgColor: colors.tertiaryContainer,
                  onTapped: widget.onNext,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  BlocBuilder<PromptBloc, PromptState> _feedbackText() {
    return BlocBuilder<PromptBloc, PromptState>(
      builder: (context, state) {
        String feedback = '';
        final correct = state.correct;
        final species = state.promptSpecies;
        if (correct != null) {
          if (species != null) {
            final prefix = correct ? 'Correct' : 'Not quite';
            feedback = '$prefix, it\'s ${species.family.latinName}!';
          }
        }
        return FittedBox(child: Text(feedback, style: context.headlineMedium));
      },
    );
  }
}

class FeedbackSpecies extends StatelessWidget {
  const FeedbackSpecies({
    Key? key,
    required this.species,
  }) : super(key: key);

  final Species species;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FittedBox(
            child: Text(
              species.latinName,
              style: context.headlineSmall?.apply(fontStyle: FontStyle.italic),
            ),
          ),
          FittedBox(
              child: Text(species.commonName, style: context.headlineSmall)),
        ],
      ),
    );
  }
}

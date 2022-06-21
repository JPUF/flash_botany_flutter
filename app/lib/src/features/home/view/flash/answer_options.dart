import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/blocs/prompt_bloc.dart';
import '../../../../shared/models/family.dart';
import 'custom_button.dart';
import 'prompt_content.dart';

class AnswerOptions extends StatefulWidget {
  const AnswerOptions({Key? key, required this.onAnswerSelected})
      : super(key: key);

  final Function(Family) onAnswerSelected;

  @override
  State<AnswerOptions> createState() => _AnswerOptionsState();
}

class _AnswerOptionsState extends State<AnswerOptions> {
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
    return AnimatedOpacity(
      opacity: _visible ? 1 : 0,
      curve: Curves.ease,
      duration: _duration,
      child: Center(
        child: BlocBuilder<PromptBloc, PromptState>(
          builder: (context, state) {
            final options = state.familyOptions;
            return options != null && options.length == 4
                ? AnswerButtonTable(
                    familyOptions: options,
                    onAnswerSelected: widget.onAnswerSelected,
                  )
                : const SizedLoadSpinner();
          },
        ),
      ),
    );
  }
}

class AnswerButtonTable extends StatelessWidget {
  const AnswerButtonTable({
    Key? key,
    required this.familyOptions,
    required this.onAnswerSelected,
  }) : super(key: key);

  final List<Family> familyOptions;
  final Function(Family) onAnswerSelected;

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          CustomButton(
            title: familyOptions[0].name,
            onTapped: () => onAnswerSelected(familyOptions[0]),
          ),
          CustomButton(
            title: familyOptions[1].name,
            onTapped: () => onAnswerSelected(familyOptions[1]),
          ),
        ]),
        TableRow(children: [
          CustomButton(
            title: familyOptions[2].name,
            onTapped: () => onAnswerSelected(familyOptions[2]),
          ),
          CustomButton(
            title: familyOptions[3].name,
            onTapped: () => onAnswerSelected(familyOptions[3]),
          ),
        ])
      ],
    );
  }
}

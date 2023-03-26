import 'package:flutter/material.dart';

import '../../../../shared/blocs/prompt/prompt_bloc.dart';
import '../../../../shared/extensions.dart';
import '../flash/prompt_content.dart';

class PromptScaffold extends StatelessWidget {
  const PromptScaffold({Key? key, required this.promptState}) : super(key: key);

  final PromptState promptState;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.isMobile) {
        return PromptContent(promptState: promptState);
      } else {
        return FractionallySizedBox(
          widthFactor: 0.5,
          child: PromptContent(promptState: promptState),
        );
      }
    });
  }
}

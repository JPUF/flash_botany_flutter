import 'package:flutter/material.dart';

import '../../../../shared/extensions.dart';
import '../flash/prompt_content.dart';

class PromptScaffold extends StatelessWidget {
  const PromptScaffold({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.isMobile) {
        return const PromptContent();
      } else {
        return const FractionallySizedBox(
            widthFactor: 0.5, child: PromptContent());
      }
    });
  }
}

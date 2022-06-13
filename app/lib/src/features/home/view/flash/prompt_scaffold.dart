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
        return Row(children: [
          Expanded(flex: 1, child: Container()),
          const Expanded(flex: 2, child: PromptContent()),
          Expanded(flex: 1, child: Container()),
        ]);
      }
    });
  }
}

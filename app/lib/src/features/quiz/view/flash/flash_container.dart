import 'package:flutter/material.dart';

import '../../../../shared/blocs/prompt_bloc.dart';
import 'flash_content.dart';

class FlashContainerDesktop extends StatelessWidget {
  const FlashContainerDesktop({
    Key? key,
    required this.promptState,
    required this.sheetRelativePosition,
  }) : super(key: key);

  final PromptState promptState;
  final double sheetRelativePosition;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        SizedBox(width: sheetRelativePosition * screenWidth),
        Expanded(
          child: FlashContent(promptState: promptState),
        ),
      ],
    );
  }
}

class FlashContainerMobile extends StatelessWidget {
  const FlashContainerMobile({Key? key, required this.promptState})
      : super(key: key);

  final PromptState promptState;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      color: colors.surface,
      child: Column(
        children: [
          Expanded(child: FlashContent(promptState: promptState)),
          const SizedBox(height: 68),
        ],
      ),
    );
  }
}

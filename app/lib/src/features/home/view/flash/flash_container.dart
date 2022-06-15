import 'package:flutter/material.dart';

import 'flash_content.dart';

class FlashContainerDesktop extends StatelessWidget {
  const FlashContainerDesktop({
    Key? key,
    required this.sheetRelativePosition,
  }) : super(key: key);

  final double sheetRelativePosition;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        SizedBox(width: sheetRelativePosition * screenWidth),
        const Expanded(
          child: FlashContent(),
        ),
      ],
    );
  }
}

class FlashContainerMobile extends StatelessWidget {
  const FlashContainerMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FractionallySizedBox(heightFactor: 0.9, child: FlashContent());
  }
}

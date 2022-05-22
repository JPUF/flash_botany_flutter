import 'package:flutter/material.dart';

import '../../../../shared/extensions.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({
    Key? key,
    required this.sheetRelativePosition,
  }) : super(key: key);

  final double sheetRelativePosition;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        SizedBox(
            width: sheetRelativePosition * screenWidth,
            child: const Placeholder()),
        Expanded(
          child: Stack(
            children: [
              const Placeholder(),
              Center(child: Text('On desktop', style: context.headlineLarge)),
            ],
          ),
        ),
      ],
    );
  }
}

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('On mobile', style: context.headlineLarge));
  }
}

import 'package:flutter/material.dart';

import 'extensions.dart';

class PlatformSized extends StatelessWidget {
  const PlatformSized({Key? key, required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return FractionallySizedBox(
        widthFactor: constraints.isMobile ? 1 : 0.5,
        child: child,
      );
    });
  }
}

import 'package:flutter/material.dart';

class ColouredSafeArea extends StatelessWidget {
  final Widget child;
  final Color color;

  const ColouredSafeArea({Key? key, required this.child, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: SafeArea(
        child: child,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class RootLayout extends StatelessWidget {
  const RootLayout({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: child);
  }
}
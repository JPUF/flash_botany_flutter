import 'package:flutter/material.dart';

import '../../../shared/extensions.dart';

class BasicButton extends StatelessWidget {
  const BasicButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.trailingWidget,
  }) : super(key: key);

  final String text;
  final VoidCallback onTap;
  final Widget? trailingWidget;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Material(
        child: InkWell(
          onTap: onTap,
          child: HeroButtonContent(text: text, trailingWidget: trailingWidget),
        ),
      ),
    );
  }
}

class HeroButtonContent extends StatelessWidget {
  const HeroButtonContent({
    Key? key,
    required this.text,
    this.trailingWidget,
  }) : super(key: key);

  final String text;
  final Widget? trailingWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 60,
      alignment: AlignmentDirectional.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget?>[
          Expanded(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: context.headlineSmall,
            ),
            flex: 1,
          ),
          trailingWidget
        ].whereType<Widget>().toList(),
      ),
    );
  }
}

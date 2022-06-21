import 'package:flutter/material.dart';

import '../../../../shared/extensions.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.title,
    this.bgColor,
    required this.onTapped,
  }) : super(key: key);

  final String title;
  final Color? bgColor;
  final VoidCallback onTapped;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Material(
        color: bgColor ?? colors.onInverseSurface,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          customBorder:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          onTap: onTapped,
          child: ButtonText(title: title),
        ),
      ),
    );
  }
}

class ButtonText extends StatelessWidget {
  const ButtonText({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 4),
      width: double.infinity,
      alignment: AlignmentDirectional.center,
      child: FittedBox(
        child: Text(
          title,
          style: context.headlineSmall?.apply(fontStyle: FontStyle.italic),
        ),
      ),
    );
  }
}

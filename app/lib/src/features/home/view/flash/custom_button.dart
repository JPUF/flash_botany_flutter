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
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
        child: InkWell(
          customBorder:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          onTap: onTapped,
          child: Container(
            height: 70,
            width: double.infinity,
            alignment: AlignmentDirectional.center,
            child: Text(
              title,
              style:
                  context.headlineSmall?.apply(fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ),
    );
  }
}

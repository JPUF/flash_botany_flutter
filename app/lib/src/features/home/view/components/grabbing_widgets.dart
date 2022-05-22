import 'dart:math' as math;

import 'package:flutter/material.dart';

class BottomGrabbingWidget extends StatelessWidget {
  const BottomGrabbingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
          color: colors.surfaceVariant,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          )),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15),
            height: 7,
            width: 60,
            decoration:  BoxDecoration(
              color: colors.onSurfaceVariant,
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
          )
        ],
      ),
    );
  }
}

class SideGrabbingWidget extends StatelessWidget {
  const SideGrabbingWidget({
    Key? key,
    required this.sheetExpansionPercent,
  }) : super(key: key);

  final double sheetExpansionPercent;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: colors.surfaceVariant,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Transform.rotate(
              angle: -sheetExpansionPercent * math.pi,
              child: Icon(
                Icons.chevron_right_rounded,
                color: colors.surface,
                size: 32,
              )),
        ],
      ),
    );
  }
}

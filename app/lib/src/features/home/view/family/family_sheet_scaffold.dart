import 'package:flutter/material.dart';

import 'family_info.dart';

class FamilySheetContent extends StatelessWidget {
  const FamilySheetContent({
    Key? key,
    this.sheetExpansionPercent,
  }) : super(key: key);

  final double? sheetExpansionPercent;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: colors.surfaceVariant,
        appBar: AppBar(
          backgroundColor: colors.surfaceVariant,
          flexibleSpace: const SafeArea(
            child: TabBar(
              isScrollable: true,
              tabs: [
                Tab(text: '<FamilyName1>'),
                Tab(text: '<FamilyName2>'),
                Tab(text: '<FamilyName3>'),
                Tab(text: '<FamilyName4>'),
              ],
            ),
          ),
        ),
        body: Opacity(
          opacity: getOpacityPercentage(sheetExpansionPercent ?? 1),
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              FamilyInfo(),
              FamilyInfo(),
              FamilyInfo(),
              FamilyInfo(),
            ],
          ),
        ),
      ),
    );
  }

  double getOpacityPercentage(double sheetExpansion) {
    const minimum = 0.75;
    double opacity = (sheetExpansion - minimum);
    if (opacity < 0) opacity = 0;
    opacity *= 1 / (1 - minimum);
    if (opacity > 1) opacity = 1;
    return opacity;
  }
}

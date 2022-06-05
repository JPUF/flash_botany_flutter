import 'package:flutter/material.dart';

import 'family_info.dart';

class FamilySheetContent extends StatelessWidget {
  const FamilySheetContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
        body: Container(
          color: colors.surfaceVariant,
          child: TabBarView(
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
}

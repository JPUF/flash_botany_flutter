import 'package:flutter/material.dart';

import '../../shared/extensions.dart';
import '../../shared/models/family.dart';
import '../../shared/strings.dart';
import '../../shared/views/custom_app_bar.dart';
import 'family_option.dart';

class CustomLessonScreen extends StatelessWidget {
  const CustomLessonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(showBackButton: true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: const _CustomLessonContent()),
        ),
      ),
    );
  }
}

class _CustomLessonContent extends StatelessWidget {
  const _CustomLessonContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Strings.customSelectionPrompt, style: context.headlineSmall),
        const SizedBox(height: 16),
        Table(children: _familyRows()),
      ],
    );
  }

  List<TableRow> _familyRows() {
    List<TableRow> rows = [];
    for (int i = 0; i < Family.values.length; i += 2) {
      rows.add(TableRow(
        children: [
          FamilyOption(
            family: Family.values[i],
            isSelected: i%3 ==0,
            onTap: () {},
          ),
          if (i + 1 < Family.values.length)
            FamilyOption(
              family: Family.values[i + 1],
              isSelected: (i+1)%3 ==0,
              onTap: () {},
            ) else Container(),
        ],
      ));
    }
    return rows;
  }
}

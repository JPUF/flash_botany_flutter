import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../shared/destinations.dart';
import '../../shared/extensions.dart';
import '../../shared/models/family.dart';
import '../../shared/views/custom_app_bar.dart';
import 'components/family_button.dart';
import 'components/hero_quiz_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: const CustomAppBar(showBackButton: false),
        body: Scrollbar(
          child: SizedBox.expand(
            child: FractionallySizedBox(
              widthFactor: constraints.isMobile ? 1 : 0.5,
              child: const SizedBox.expand(child: HomeScreenContent()),
            ),
          ),
        ),
      );
    });
  }
}

class HomeScreenContent extends StatelessWidget {
  const HomeScreenContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<TableRow> rows = _filteredFamilyButtons();

    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          HeroQuizButton(onTap: () {
            GoRouter.of(context).go(Destination.quiz.path);
          }),
          const SizedBox(height: 32),
          TextField(
            style: context.bodyMedium,
            decoration: const InputDecoration(
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderSide: BorderSide(width: 0.5)),
                hintText: 'Family search:'),
          ),
          const SizedBox(height: 16),
          Table(children: rows),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  List<TableRow> _filteredFamilyButtons() {
    List<TableRow> rows = [];
    const families = Family.values;
    for (int i = 0; i < families.length; i += 2) {
      rows.add(TableRow(children: [
        FamilyButton(family: families[i]),
        i + 1 < families.length
            ? FamilyButton(family: families[i + 1])
            : Container(),
      ]));
    }
    return rows;
  }
}

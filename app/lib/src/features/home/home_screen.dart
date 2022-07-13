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
          Table(
            children: [
              TableRow(children: [
                FamilyButton(
                  family: Family.asteraceae,
                  onTap: () =>
                      _navigateToFamilyScreen(context, Family.asteraceae),
                ),
                FamilyButton(
                  family: Family.apiaceae,
                  onTap: () =>
                      _navigateToFamilyScreen(context, Family.apiaceae),
                ),
              ]),
              TableRow(children: [
                FamilyButton(
                  family: Family.boraginaceae,
                  onTap: () =>
                      _navigateToFamilyScreen(context, Family.boraginaceae),
                ),
                FamilyButton(
                  family: Family.brassicaceae,
                  onTap: () =>
                      _navigateToFamilyScreen(context, Family.brassicaceae),
                ),
              ]),
              TableRow(children: [
                FamilyButton(
                  family: Family.caryophyllaceae,
                  onTap: () =>
                      _navigateToFamilyScreen(context, Family.caryophyllaceae),
                ),
                FamilyButton(
                  family: Family.lamiaceae,
                  onTap: () =>
                      _navigateToFamilyScreen(context, Family.lamiaceae),
                ),
              ]),
            ],
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  void _navigateToFamilyScreen(BuildContext c, Family family) {
    GoRouter.of(c).go(Destination.family.path + '/${family.latinName}');
  }
}

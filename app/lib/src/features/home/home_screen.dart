import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../shared/destinations.dart';
import '../../shared/extensions.dart';
import '../../shared/models/family.dart';
import '../../shared/strings.dart';
import '../../shared/views/brightness_toggle.dart';
import '../quiz/view/family_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text(Strings.appName, style: context.headlineSmall),
          actions: const [BrightnessToggle()],
        ),
        body: SizedBox.expand(
          child: FractionallySizedBox(
            widthFactor: constraints.isMobile ? 1 : 0.5,
            child: const SizedBox.expand(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: HomeScreenContent(),
              ),
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
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: [
        FloatingActionButton(onPressed: () {
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
          children: const [
            TableRow(children: [
              FamilyButton(family: Family.asteraceae),
              FamilyButton(family: Family.apiaceae),
            ]),
            TableRow(children: [
              FamilyButton(family: Family.boraginaceae),
              FamilyButton(family: Family.brassicaceae),
            ]),
            TableRow(children: [
              FamilyButton(family: Family.caryophyllaceae),
              FamilyButton(family: Family.lamiaceae),
            ]),
          ],
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}

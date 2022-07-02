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
            widthFactor: 0.5,
            child: SizedBox.expand(
              child: Placeholder(
                child: Column(
                  children: [
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
                    FloatingActionButton(
                        onPressed: () {
                          GoRouter.of(context).go(Destination.quiz.path);
                        }),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}

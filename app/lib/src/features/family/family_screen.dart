import 'package:flutter/material.dart';

import '../../shared/extensions.dart';
import '../../shared/models/family.dart';
import '../../shared/strings.dart';
import '../../shared/views/brightness_toggle.dart';
import '../quiz/view/family/family_info.dart';

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({Key? key, required this.family}) : super(key: key);

  final Family family;

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
            child: SizedBox.expand(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: FamilyInfo(family: family),
              ),
            ),
          ),
        ),
      );
    });
  }
}

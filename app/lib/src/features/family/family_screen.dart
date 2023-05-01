import 'package:flutter/material.dart';

import '../../shared/extensions.dart';
import '../../shared/models/family.dart';
import '../../shared/strings.dart';
import '../../shared/views/brightness_toggle.dart';
import '../../shared/views/custom_app_bar.dart';
import '../quiz/view/family/family_info.dart';

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({Key? key, required this.family}) : super(key: key);

  final Family family;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.isMobile
            ? FamilyScaffoldMobile(family: family)
            : FamilyScaffoldWeb(family: family);
      },
    );
  }
}

class FamilyScaffoldWeb extends StatelessWidget {
  const FamilyScaffoldWeb({
    Key? key,
    required this.family,
  }) : super(key: key);

  final Family family;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: TextButton(
          child: Text(Strings.appName, style: context.headlineSmall),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: const [BrightnessToggle()],
      ),
      body: SafeArea(child: FamilyInfo(family: family)),
    );
  }
}

class FamilyScaffoldMobile extends StatelessWidget {
  const FamilyScaffoldMobile({
    Key? key,
    required this.family,
  }) : super(key: key);

  final Family family;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(showBackButton: true),
      body: SafeArea(child: FamilyInfo(family: family)),
    );
  }
}

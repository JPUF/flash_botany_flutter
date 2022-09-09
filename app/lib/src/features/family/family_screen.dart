import 'package:flutter/material.dart';

import '../../shared/models/family.dart';
import '../../shared/views/custom_app_bar.dart';
import '../quiz/view/family/family_info.dart';

class FamilyScreen extends StatelessWidget {
  const FamilyScreen({Key? key, required this.family}) : super(key: key);

  final Family family;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: const CustomAppBar(showBackButton: true),
        body: SizedBox.expand(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: FamilyInfo(family: family),
          ),
        ),
      );
}

import 'package:flutter/material.dart';

import '../../shared/extensions.dart';
import '../../shared/strings.dart';
import '../../shared/views/custom_app_bar.dart';

class MorphologyScreen extends StatelessWidget {
  const MorphologyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const Scaffold(
        appBar: CustomAppBar(showBackButton: true),
        body: SafeArea(
          child: SingleChildScrollView(child: MorphologyContent()),
        ),
      );
}

class MorphologyContent extends StatelessWidget {
  const MorphologyContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PaddedItem(
          child: Text(
            Strings.morphologyReproductive,
            style: context.headlineSmall,
          ),
        ),
        const PaddedItem(
          alignment: AlignmentDirectional.center,
          child: Image(
            image: AssetImage('assets/images/lily.png'),
            width: 350,
            height: 250,
          ),
        ),
        PaddedItem(
          child: Text(
            Strings.morphologyBody,
            style: context.bodyLarge,
          ),
        ),
        const SizedBox(height: 16),
        PaddedItem(
          child: Text(
            Strings.morphologyCalyx,
            style: context.headlineSmall,
          ),
        ),
        const PaddedItem(
          alignment: AlignmentDirectional.center,
          child: Image(
            image: AssetImage('assets/images/sepals.jpg'),
            width: 200,
            height: 200,
          ),
        ),
        PaddedItem(
          child: Text(
            Strings.morphologySepals,
            style: context.bodyLarge,
          ),
        ),
        const SizedBox(height: 16),
        PaddedItem(
          child: Text(
            Strings.morphologyCredit,
            style: context.bodySmall,
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class PaddedItem extends StatelessWidget {
  const PaddedItem({
    Key? key,
    required this.child,
    this.alignment,
  }) : super(key: key);

  final Widget child;
  final AlignmentDirectional? alignment;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment ?? AlignmentDirectional.centerStart,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: child,
      ),
    );
  }
}

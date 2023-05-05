import 'package:flutter/material.dart';

import '../../shared/extensions.dart';
import '../../shared/strings.dart';
import '../../shared/util_widgets.dart';
import '../../shared/views/custom_app_bar.dart';

class MorphologyScreen extends StatelessWidget {
  const MorphologyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (context, constraints) {
          return constraints.isMobile
              ? const MorphologyScaffoldMobile()
              : const MorphologyScaffoldWeb();
        },
      );
}

class MorphologyScaffoldWeb extends StatelessWidget {
  const MorphologyScaffoldWeb({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(showBackButton: true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: MorphologyContent(),
        ),
      ),
    );
  }
}

class MorphologyScaffoldMobile extends StatelessWidget {
  const MorphologyScaffoldMobile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(showBackButton: true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: MorphologyContent(),
        ),
      ),
    );
  }
}

class MorphologyContent extends StatelessWidget {
  const MorphologyContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      alignment: AlignmentDirectional.topCenter,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          PlatformSized(
            child: Text(
              Strings.morphologyReproductive,
              style: context.headlineSmall,
            ),
          ),
          const SizedBox(height: 16),
          const PlatformSized(
            child: Image(
              image: AssetImage('assets/images/lily.png'),
              width: 350,
              height: 250,
            ),
          ),
          const SizedBox(height: 16),
          PlatformSized(
            child: Text(
              Strings.morphologyBody,
              style: context.bodyLarge,
            ),
          ),
          const SizedBox(height: 32),
          PlatformSized(
            child: Text(
              Strings.morphologyCalyx,
              style: context.headlineSmall,
            ),
          ),
          const SizedBox(height: 16),
          const PlatformSized(
            child: Image(
              image: AssetImage('assets/images/sepals.jpg'),
              width: 200,
              height: 200,
            ),
          ),
          const SizedBox(height: 16),
          PlatformSized(
            child: Text(
              Strings.morphologySepals,
              style: context.bodyLarge,
            ),
          ),
          const SizedBox(height: 64),
          PlatformSized(
            child: Text(
              Strings.morphologyCredit,
              style: context.bodySmall,
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

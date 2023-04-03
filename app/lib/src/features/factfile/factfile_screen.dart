import 'package:flutter/material.dart';

import '../../shared/views/custom_app_bar.dart';

class FactfileScreen extends StatelessWidget {
  const FactfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(showBackButton: true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: FactfileContent(),
        ),
      ),
    );
  }
}

class FactfileContent extends StatelessWidget {
  const FactfileContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      alignment: AlignmentDirectional.topCenter,
      child: const Text("Factfile"),
    );
  }
}

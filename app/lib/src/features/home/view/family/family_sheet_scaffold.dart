import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/blocs/prompt_bloc.dart';
import '../flash/prompt_content.dart';
import 'family_info.dart';

class FamilySheetContent extends StatelessWidget {
  const FamilySheetContent({
    Key? key,
    this.sheetExpansionPercent,
  }) : super(key: key);

  final double? sheetExpansionPercent;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: colors.surfaceVariant,
        appBar: AppBar(
          backgroundColor: colors.surfaceVariant,
          flexibleSpace: SafeArea(
            child: BlocBuilder<PromptBloc, PromptState>(
              builder: (context, state) {
                final families = state.familyOptions;
                return families != null && families.length == 4
                    ? TabBar(
                        isScrollable: true,
                        tabs: families.map((f) => Tab(text: f.latinName)).toList(),
                      )
                    : Container();
              },
            ),
          ),
        ),
        body: Opacity(
          opacity: getOpacityPercentage(sheetExpansionPercent ?? 1),
          child: BlocBuilder<PromptBloc, PromptState>(
            builder: (context, state) {
              final families = state.familyOptions;
              return families != null && families.length == 4
                  ? TabBarView(
                      physics: const NeverScrollableScrollPhysics(),
                      children:
                          families.map((f) => FamilyInfo(family: f)).toList(),
                    )
                  : const SizedLoadSpinner();
            },
          ),
        ),
      ),
    );
  }

  double getOpacityPercentage(double sheetExpansion) {
    const minimum = 0.75;
    double opacity = (sheetExpansion - minimum);
    if (opacity < 0) opacity = 0;
    opacity *= 1 / (1 - minimum);
    if (opacity > 1) opacity = 1;
    return opacity;
  }
}

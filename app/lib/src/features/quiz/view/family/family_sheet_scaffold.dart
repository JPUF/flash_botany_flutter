import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../shared/blocs/prompt_bloc.dart';
import '../flash/prompt_content.dart';
import 'family_info.dart';

class FamilySheetContent extends StatefulWidget {
  const FamilySheetContent({
    Key? key,
    this.sheetExpansionPercent,
  }) : super(key: key);

  final double? sheetExpansionPercent;

  @override
  State<FamilySheetContent> createState() => _FamilySheetContentState();
}

class _FamilySheetContentState extends State<FamilySheetContent>
    with TickerProviderStateMixin {
  TabController? _controller;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: colors.surfaceVariant,
        appBar: _familySheetAppBar(colors.surfaceVariant),
        body: Opacity(
          opacity: getOpacityPercentage(widget.sheetExpansionPercent ?? 1),
          child: _familySheetBody(),
        ),
      ),
    );
  }

  BlocBuilder<PromptBloc, PromptState> _familySheetBody() {
    return BlocBuilder<PromptBloc, PromptState>(
      buildWhen: (prev, curr) => prev.familyOptions != curr.familyOptions,
      builder: (context, state) {
        final families = state.familyOptions;
        if (families == null) return const SizedLoadSpinner();
        _initTabController(families.length);
        return TabBarView(
          controller: _controller,
          children: families.map((f) => FamilyInfo(family: f)).toList(),
        );
      },
    );
  }

  void _initTabController(int length) {
    _controller = TabController(initialIndex: 0, length: length, vsync: this);
  }

  AppBar _familySheetAppBar(Color bgColor) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: bgColor,
      flexibleSpace: SafeArea(
        child: BlocListener<PromptBloc, PromptState>(
          listenWhen: (previous, current) {
            return previous.promptSpecies != current.promptSpecies;
          },
          listener: (_, __) {
            _controller?.index = 0;
          },
          child: BlocBuilder<PromptBloc, PromptState>(
            builder: (context, state) {
              final families = state.familyOptions;
              if (families == null) return Container();
              return TabBar(
                controller: _controller,
                isScrollable: true,
                tabs: families.map((f) => Tab(text: f.latinName)).toList(),
              );
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

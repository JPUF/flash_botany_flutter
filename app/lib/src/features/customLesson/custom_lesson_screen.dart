import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../shared/blocs/familySelection/family_selection_bloc.dart';
import '../../shared/extensions.dart';
import '../../shared/models/family.dart';
import '../../shared/models/lesson.dart';
import '../../shared/strings.dart';
import '../../shared/views/custom_app_bar.dart';
import '../quiz/view/quiz_screen.dart';
import 'family_option.dart';

class CustomLessonScreen extends StatelessWidget {
  const CustomLessonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(showBackButton: true),
      body: SafeArea(
        child: BlocBuilder<FamilySelectionBloc, FamilySelectionState>(
          builder: (context, state) {
            return Stack(
              alignment: Alignment.bottomRight,
              children: [
                SingleChildScrollView(
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(16, 24, 16, 128),
                      child: const _CustomLessonContent()),
                ),
                if (state.canProgress)
                  _nextButton(context)
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _nextButton(BuildContext context) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
    child: ElevatedButton(
      onPressed: () => PersistentNavBarNavigator.pushNewScreen(
        context,
        screen: QuizScreen(lesson: Lesson(
          title: Strings.customLessonTitle,
          familySet: context.read<FamilySelectionBloc>().state.selectedFamilies,
        )),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(Strings.customSelectionBegin, style: context.titleLarge),
          const SizedBox(width: 8),
          Icon(Icons.arrow_forward, color: Theme.of(context).colorScheme.tertiary),
        ],
      ),
      style: ElevatedButton.styleFrom(
        elevation: 16,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        padding: const EdgeInsets.all(20),
        backgroundColor: Theme.of(context).colorScheme.tertiaryContainer,
      ),
    )
  );
}

class _CustomLessonContent extends StatelessWidget {
  const _CustomLessonContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(Strings.customSelectionPrompt, style: context.headlineSmall),
        const SizedBox(height: 16),
        BlocBuilder<FamilySelectionBloc, FamilySelectionState>(
          builder: (context, state) => Table(
            children: _familyRows(context, state.selectedFamilies),
          ),
        ),
      ],
    );
  }

  List<TableRow> _familyRows(
    BuildContext context,
    List<Family> selectedFamilies,
  ) {
    List<TableRow> rows = [];
    for (int i = 0; i < Family.values.length; i += 2) {
      rows.add(TableRow(
        children: [
          FamilyOption(
            family: Family.values[i],
            isSelected: selectedFamilies.contains(Family.values[i]),
            onTap: () {
              _toggleFamily(context, Family.values[i]);
            },
          ),
          if (i + 1 < Family.values.length)
            FamilyOption(
              family: Family.values[i + 1],
              isSelected: selectedFamilies.contains(Family.values[i + 1]),
              onTap: () {
                _toggleFamily(context, Family.values[i + 1]);
              },
            )
          else
            Container(),
        ],
      ));
    }
    return rows;
  }

  void _toggleFamily(BuildContext context, Family family) => context
      .read<FamilySelectionBloc>()
      .add(FamilySelectionEvent.toggleFamily(family));
}

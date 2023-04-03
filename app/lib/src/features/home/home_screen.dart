import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../shared/data/lesson_data.dart';
import '../../shared/destinations.dart';
import '../../shared/extensions.dart';
import '../../shared/models/family.dart';
import '../../shared/models/lesson.dart';
import '../../shared/strings.dart';
import '../../shared/util_widgets.dart';
import '../../shared/views/custom_app_bar.dart';
import 'components/basic_button.dart';
import 'components/family_button.dart';
import 'components/hero_quiz_button.dart';
import 'components/lesson_progress_indicator.dart';
import 'components/lesson_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(showBackButton: false),
      body: SafeArea(
        child: Scrollbar(
          child: SizedBox.expand(
            child: SizedBox.expand(child: HomeScreenContent()),
          ),
        ),
      ),
    );
  }
}

class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
  String searchTerm = '';

  @override
  Widget build(BuildContext context) {
    List<TableRow> rows = _filteredFamilyButtons(searchTerm);

    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          PlatformSized(
            child: BasicButton(
                text: Strings.flowerCta,
                onTap: () {
                  GoRouter.of(context).push(Destination.morphology.path);
                }),
          ),
          PlatformSized(
            child: BasicButton(
                text: Strings.factfileCta,
                onTap: () {
                  GoRouter.of(context).push(Destination.factfile.path);
                }),
          ),
          PlatformSized(
            child: HeroQuizButton(
              onTap: () => _toQuiz(LessonData.lessons.first),
            ),
          ),
          const SizedBox(height: 32),
          const LessonSection(),
          const SizedBox(height: 32),
          PlatformSized(child: _familySearchField()),
          const SizedBox(height: 16),
          PlatformSized(child: Table(children: rows)),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _familySearchField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        onChanged: (text) {
          setState(() => searchTerm = text);
        },
        style: context.bodyMedium,
        decoration: InputDecoration(
            suffixIcon: searchTerm.isEmpty
                ? const Icon(Icons.search)
                : IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () => setState(() => searchTerm = '')),
            border:
                const OutlineInputBorder(borderSide: BorderSide(width: 0.5)),
            hintText: Strings.familySearchHint),
      ),
    );
  }

  List<TableRow> _filteredFamilyButtons(String searchTerm) {
    List<TableRow> rows = [];
    final families =
        searchTerm.isEmpty ? Family.values : _filterFamilies(searchTerm);
    if (families.isEmpty) {
      rows.add(TableRow(children: [
        Text(
          Strings.familySearchNoResults,
          style: context.bodyLarge,
          textAlign: TextAlign.center,
        )
      ]));
    }
    for (int i = 0; i < families.length; i += 2) {
      rows.add(TableRow(children: [
        FamilyButton(family: families[i]),
        i + 1 < families.length
            ? FamilyButton(family: families[i + 1])
            : Container(),
      ]));
    }
    return rows;
  }

  List<Family> _filterFamilies(String searchTerm) {
    return Family.values
        .where(
            (f) => f.latinName.toLowerCase().contains(searchTerm.toLowerCase()))
        .toList();
  }

  void _toQuiz(Lesson lesson) {
    GoRouter.of(context).push(Destination.quiz.path, extra: lesson);
  }
}

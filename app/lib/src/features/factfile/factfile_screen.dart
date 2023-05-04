import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../../shared/extensions.dart';
import '../../shared/models/family.dart';
import '../../shared/strings.dart';
import '../../shared/util_widgets.dart';
import '../../shared/views/custom_app_bar.dart';
import '../home/components/basic_button.dart';
import '../morphology/morphology_screen.dart';
import 'family_button.dart';

class FactfileScreen extends StatelessWidget {
  const FactfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(showBackButton: false),
      body: SafeArea(
        child: SingleChildScrollView(
          child: FactfileContent(),
        ),
      ),
    );
  }
}

class FactfileContent extends StatefulWidget {
  const FactfileContent({Key? key}) : super(key: key);

  @override
  State<FactfileContent> createState() => _FactfileContentState();
}

class _FactfileContentState extends State<FactfileContent> {
  String searchTerm = '';

  @override
  Widget build(BuildContext context) {
    List<TableRow> rows = _filteredFamilyButtons(searchTerm);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      alignment: AlignmentDirectional.topCenter,
      child: Column(
        children: [
          const SizedBox(height: 32),
          PlatformSized(
            child: BasicButton(
                text: Strings.flowerCta,
                onTap: () {
                  PersistentNavBarNavigator.pushNewScreen(context,
                      screen: const MorphologyScreen());
                }),
          ),
          const SizedBox(height: 16),
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
}

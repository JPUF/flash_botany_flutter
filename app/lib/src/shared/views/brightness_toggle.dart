import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../extensions.dart';
import '../providers/providers.dart';
import '../strings.dart';

class BrightnessToggle extends StatelessWidget {
  const BrightnessToggle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDark = context.theme.brightness == Brightness.dark;
    return IconButton(
      icon: Theme.of(context).brightness == Brightness.light
          ? const Icon(Icons.brightness_2_rounded)
          : const Icon(Icons.brightness_7_rounded),
      onPressed: () {
        _saveThemePreference(!isDark);
        final themeProvider = ThemeProvider.of(context);
        final settings = themeProvider.settings.value;
        final newSettings = ThemeSettings(
          sourceColor: settings.sourceColor,
          themeMode: isDark ? ThemeMode.light : ThemeMode.dark,
        );
        ThemeSettingChange(settings: newSettings).dispatch(context);
      },
    );
  }

  Future<void> _saveThemePreference(bool isDark) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(Strings.darkModeKey, isDark);
  }
}

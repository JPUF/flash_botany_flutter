import 'package:flutter/material.dart';

import '../extensions.dart';
import '../providers/providers.dart';

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
}

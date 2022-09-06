import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/shared/app.dart';
import 'src/shared/strings.dart';

void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final isDark = prefs.getBool(Strings.darkModeKey);
  runApp(FlashApp(isDark: isDark));
}

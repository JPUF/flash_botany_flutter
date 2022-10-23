import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/shared/app.dart';
import 'src/shared/injection.dart';
import 'src/shared/strings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupInjection();
  final prefs = await SharedPreferences.getInstance();
  runApp(FlashApp(isDark: prefs.getBool(Strings.darkModeKey)));
}

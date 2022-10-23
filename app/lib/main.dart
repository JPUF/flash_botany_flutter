import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

import 'src/shared/app.dart';
import 'src/shared/strings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final database = openDatabase(
    join(await getDatabasesPath(), 'progression_database.db'),
    onCreate: (db, version) {
      return db.execute(
        'CREATE TABLE progressions(id TEXT PRIMARY KEY, progression INTEGER)',
      );
    },
    version: 1,
  );
  final prefs = await SharedPreferences.getInstance();
  final isDark = prefs.getBool(Strings.darkModeKey);
  runApp(FlashApp(isDark: isDark));
}

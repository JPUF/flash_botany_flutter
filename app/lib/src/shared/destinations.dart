import 'package:flutter/material.dart';

const String root = '/';

// Screen names
const String homeName = 'home';
const String quizName = 'quiz';

enum Destination {
  home(root, ValueKey(homeName)),
  quiz(root + quizName, ValueKey(quizName));

  final String path;
  final ValueKey<String> key;

  const Destination(
    this.path,
    this.key,
  );
}

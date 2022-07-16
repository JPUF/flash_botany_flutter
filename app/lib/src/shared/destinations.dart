import 'package:flutter/material.dart';

const String root = '/';

// Screen names
const String homeRoute = 'home';
const String quizRoute = 'quiz';
const String familyRoute = 'family';
const String familyParameter = 'familyName';

enum Destination {
  home(root, ValueKey(homeRoute)),
  quiz(root + quizRoute, ValueKey(quizRoute)),
  family(root + familyRoute, ValueKey(familyRoute));

  final String path;
  final ValueKey<String> key;

  const Destination(
    this.path,
    this.key,
  );
}

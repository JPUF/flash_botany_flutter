import 'package:flutter/material.dart';

const String root = '/';

// Screen names
const String homeRoute = 'home';
const String quizRoute = 'quiz';
const String familyRoute = 'family';
const String familyParameter = 'familyName';
const String morphologyRoute = 'morphology';

enum Destination {
  home(root, ValueKey(homeRoute)),
  quiz(root + quizRoute, ValueKey(quizRoute)),
  morphology(root + morphologyRoute, ValueKey(morphologyRoute)),
  family(root + familyRoute, ValueKey(familyRoute));

  final String path;
  final ValueKey<String> key;

  const Destination(
    this.path,
    this.key,
  );
}

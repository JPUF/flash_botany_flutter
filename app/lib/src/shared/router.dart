import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/family/family_screen.dart';
import '../features/home/home_screen.dart';
import '../features/quiz/view/quiz_screen.dart';
import 'destinations.dart';
import 'models/family.dart';

class NavigationDestination {
  const NavigationDestination({
    required this.route,
    required this.label,
    required this.icon,
    this.child,
  });

  final String route;
  final String label;
  final Icon icon;
  final Widget? child;
}

final appRouter = GoRouter(
  navigatorBuilder: (context, state, child) => child,
  routes: [
    // HomeScreen
    GoRoute(
      path: Destination.home.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: Destination.home.key,
        child: const HomeScreen(),
      ),
    ),
    //QuizScreen
    GoRoute(
      path: Destination.quiz.path,
      pageBuilder: (context, state) => MaterialPage<void>(
        key: Destination.quiz.key,
        child: const QuizScreen(),
      ),
    ),
    //FamilyScreen
    GoRoute(
      path: Destination.family.path + '/:$familyParameter',
      pageBuilder: (context, state) => MaterialPage<void>(
        key: Destination.family.key,
        child: FamilyScreen(
          family: Family.values.firstWhere((f) => f.latinName == state.params[familyParameter]),
        ),
      ),
    ),
  ],
);

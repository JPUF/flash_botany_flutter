import 'package:flutter/foundation.dart';
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

final _slide = Tween<Offset>(
  begin: const Offset(1, 0),
  end: Offset.zero,
).chain(CurveTween(curve: Curves.easeInOut));

final appRouter = GoRouter(
  navigatorBuilder: (context, state, child) => child,
  routes: [
    // HomeScreen
    GoRoute(
      path: Destination.home.path,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: Destination.home.key,
        transitionsBuilder: (_, anim, __, child) {
          if (kIsWeb) return child;
          return SlideTransition(position: anim.drive(_slide), child: child);
        },
        child: const HomeScreen(),
      ),
    ),
    //QuizScreen
    GoRoute(
      path: Destination.quiz.path,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: Destination.quiz.key,
        transitionsBuilder: (_, anim, __, child) {
          if (kIsWeb) return child;
          return SlideTransition(position: anim.drive(_slide), child: child);
        },
        child: const QuizScreen(),
      ),
    ),
    //FamilyScreen
    GoRoute(
      path: Destination.family.path + '/:$familyParameter',
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: Destination.family.key,
        transitionsBuilder: (_, anim, __, child) {
          if (kIsWeb) return child;
          return SlideTransition(position: anim.drive(_slide), child: child);
        },
        child: FamilyScreen(
          family: Family.values
              .firstWhere((f) => f.latinName == state.params[familyParameter]),
        ),
      ),
    ),
  ],
);

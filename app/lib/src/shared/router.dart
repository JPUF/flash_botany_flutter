import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/home/view/home_screen.dart';

const _pageKey = ValueKey('_pageKey');

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
      path: '/',
      pageBuilder: (context, state) => const MaterialPage<void>(
        key: _pageKey,
        child: HomeScreen(),
      ),
    ),
  ],
);

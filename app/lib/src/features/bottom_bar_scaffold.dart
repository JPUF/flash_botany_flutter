import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../shared/strings.dart';
import 'factfile/factfile_screen.dart';
import 'home/home_screen.dart';

class BottomBarScaffold extends StatefulWidget {
  const BottomBarScaffold({
    Key? key,
    required this.menuContext,
  }) : super(key: key);

  final BuildContext menuContext;

  @override
  State<BottomBarScaffold> createState() => _BottomBarScaffoldState();
}

class _BottomBarScaffoldState extends State<BottomBarScaffold> {
  final PersistentTabController _controller = PersistentTabController();

  List<Widget> _buildScreens() =>
      [const HomeScreen(), const FactfileScreen()];

  List<PersistentBottomNavBarItem> _navBarsItems() {
    final activeColor = Theme.of(context).colorScheme.onBackground;
    const inactiveColor = Colors.grey;
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.grade),
        title: Strings.lessonsTab,
        activeColorPrimary: activeColor,
        inactiveColorPrimary: inactiveColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.info),
        title: Strings.infoTab,
        activeColorPrimary: activeColor,
        inactiveColorPrimary: inactiveColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) => Scaffold(
          body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
        ),
        navBarStyle: NavBarStyle.style6,
        backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
        navBarHeight: 64,
      ));
}

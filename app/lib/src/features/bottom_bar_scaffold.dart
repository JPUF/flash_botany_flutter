import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../shared/views/custom_app_bar.dart';
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

  List<Widget> _buildScreens() => [
        const HomeScreen(),
        const FactfileScreen(),
      ];

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: 'Home',
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.info),
        title: 'Info',
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: const CustomAppBar(showBackButton: false),
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
      ));
}

import 'package:flutter/material.dart';

import '../extensions.dart';
import '../strings.dart';
import 'brightness_toggle.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.showBackButton})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);
  @override
  final Size preferredSize; // default is 56.0
  final bool showBackButton;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext baseContext) {
    return LayoutBuilder(builder: (context, constraints) {
      return AppBar(
        leading: Visibility(
            visible: widget.showBackButton && constraints.isMobile,
            child: IconButton(
                onPressed: () {
                  Navigator.pop(baseContext);
                },
                icon: const Icon(Icons.chevron_left_rounded, size: 32))),
        centerTitle: true,
        title: Text(Strings.appName, style: context.headlineSmall),
        actions: const [BrightnessToggle()],
        bottom: PreferredSize(
            child: Container(
              color: Theme.of(context).colorScheme.onInverseSurface,
              height: 1,
            ),
            preferredSize: const Size.fromHeight(1)),
      );
    });
  }
}

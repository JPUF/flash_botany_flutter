import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

import 'providers/theme.dart';
import 'router.dart';

class FlashApp extends StatefulWidget {
  const FlashApp({Key? key}) : super(key: key);

  @override
  State<FlashApp> createState() => _FlashAppState();
}

class _FlashAppState extends State<FlashApp> {
  final settings = ValueNotifier(ThemeSettings(
    sourceColor: const Color(0xFF0C5814),
    themeMode: ThemeMode.system,
  ));

  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) => ThemeProvider(
          lightDynamic: lightDynamic,
          darkDynamic: darkDynamic,
          settings: settings,
          child: NotificationListener<ThemeSettingChange>(
            onNotification: (notification) {
              settings.value = notification.settings;
              return true;
            },
            child: ValueListenableBuilder<ThemeSettings>(
              valueListenable: settings,
              builder: (context, value, _) {
                final theme = ThemeProvider.of(context);
                return MaterialApp.router(
                  debugShowCheckedModeBanner: false,
                  title: 'Flutter Demo',
                  theme: theme.light(settings.value.sourceColor),
                  darkTheme: theme.dark(settings.value.sourceColor),
                  themeMode: theme.themeMode(),
                  routeInformationParser: appRouter.routeInformationParser,
                  routerDelegate: appRouter.routerDelegate,
                );
              },
            ),
          )),
    );
  }
}

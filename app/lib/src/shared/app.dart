import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/prompt_bloc.dart';
import 'providers/theme.dart';
import 'router.dart';
import 'scroll_behaviour.dart';
import 'strings.dart';

class FlashApp extends StatefulWidget {
  const FlashApp({Key? key, this.isDark}) : super(key: key);

  final bool? isDark;

  @override
  State<FlashApp> createState() => _FlashAppState();
}

class _FlashAppState extends State<FlashApp> {

  bool initialThemeSet = false;

  final settings = ValueNotifier(ThemeSettings(
    sourceColor: const Color(0xFF0C5814),
    themeMode: ThemeMode.system,
  ));

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return BlocProvider<PromptBloc>(
      create: (context) => PromptBloc(),
      child: DynamicColorBuilder(
        builder: (lightDynamic, darkDynamic) => ThemeProvider(
            lightDynamic: lightDynamic,
            darkDynamic: darkDynamic,
            settings: settings,
            child: NotificationListener<ThemeSettingChange>(
              onNotification: (notification) {
                final isDark = widget.isDark;
                if(isDark != null && !initialThemeSet) {
                  settings.value = ThemeSettings(
                      sourceColor: notification.settings.sourceColor,
                      themeMode: isDark ? ThemeMode.dark : ThemeMode.light
                  );
                  initialThemeSet = true;
                } else {
                  settings.value = notification.settings;
                }
                return true;
              },
              child: ValueListenableBuilder<ThemeSettings>(
                valueListenable: settings,
                builder: (context, value, _) {
                  final theme = ThemeProvider.of(context);
                  if(!initialThemeSet) {
                    theme.initialThemeMode(widget.isDark, context);
                  }
                  return MaterialApp.router(
                    title: Strings.appName,
                    debugShowCheckedModeBanner: false,
                    scrollBehavior: AppScrollBehavior(),
                    theme: theme.light(settings.value.sourceColor),
                    darkTheme: theme.dark(settings.value.sourceColor),
                    themeMode: theme.themeMode(),
                    routeInformationParser: appRouter.routeInformationParser,
                    routerDelegate: appRouter.routerDelegate,
                  );
                },
              ),
            )),
      ),
    );
  }
}

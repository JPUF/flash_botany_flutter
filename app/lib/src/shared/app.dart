import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../features/bottom_bar_scaffold.dart';
import '../features/onboarding/onboarding_carousel.dart';
import 'blocs/progression/progression_bloc.dart';
import 'blocs/prompt/prompt_bloc.dart';
import 'providers/theme.dart';
import 'scroll_behaviour.dart';
import 'strings.dart';

class FlashApp extends StatefulWidget {
  const FlashApp({
    Key? key,
    this.isDark,
    required this.hasOnboarded,
  }) : super(key: key);

  final bool? isDark;
  final bool hasOnboarded;

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
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProgressionBloc>(
          create: (context) => ProgressionBloc(),
        ),
      ],
      child: DynamicColorBuilder(
        builder: (lightDynamic, darkDynamic) => ThemeProvider(
          lightDynamic: lightDynamic,
          darkDynamic: darkDynamic,
          settings: settings,
          child: NotificationListener<ThemeSettingChange>(
            onNotification: (notification) {
              final isDark = widget.isDark;
              if (isDark != null && !initialThemeSet) {
                settings.value = ThemeSettings(
                    sourceColor: notification.settings.sourceColor,
                    themeMode: isDark ? ThemeMode.dark : ThemeMode.light);
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
                if (!initialThemeSet) {
                  theme.initialThemeMode(widget.isDark, context);
                }
                return BlocProvider(
                  create: (context) => PromptBloc(
                      progressionBloc:
                          BlocProvider.of<ProgressionBloc>(context)),
                  child: MaterialApp(
                    title: Strings.appName,
                    debugShowCheckedModeBanner: false,
                    scrollBehavior: AppScrollBehavior(),
                    theme: theme.light(settings.value.sourceColor),
                    darkTheme: theme.dark(settings.value.sourceColor),
                    themeMode: theme.themeMode(),
                    home: FirstScreen(hasOnboarded: widget.hasOnboarded),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key, required this.hasOnboarded}) : super(key: key);

  final bool hasOnboarded;

  Future<void> _setHasOnboarded() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(Strings.onboardedKey, true);
  }

  @override
  Widget build(BuildContext context) {
    if (hasOnboarded) {
      return BottomBarScaffold(menuContext: context);
    } else {
      _setHasOnboarded();
      return const OnBoardingPage();
    }
  }
}

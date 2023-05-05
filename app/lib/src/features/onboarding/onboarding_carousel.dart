import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../shared/extensions.dart';
import '../../shared/strings.dart';
import '../bottom_bar_scaffold.dart';

class OnboardingCarousel extends StatefulWidget {
  const OnboardingCarousel({Key? key}) : super(key: key);

  @override
  _OnboardingCarouselState createState() => _OnboardingCarouselState();
}

class _OnboardingCarouselState extends State<OnboardingCarousel> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
          builder: (_) => BottomBarScaffold(menuContext: context)),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    final pageDecoration = PageDecoration(
      titleTextStyle: context.headlineSmall ??
          const TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: context.bodyLarge ?? bodyStyle,
      bodyPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 64),
      pageColor: Theme.of(context).colorScheme.background,
      imagePadding: EdgeInsets.zero,
      titlePadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
    );

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Theme.of(context).colorScheme.background,
      allowImplicitScrolling: true,
      pages: [
        PageViewModel(
          title: Strings.onboardingWelcomeTitle,
          body: Strings.onboardingWelcomeBody,
          decoration: pageDecoration,
          image: const Image(
            image: AssetImage('assets/images/rosaceae.png'),
            width: 350,
            height: 250,
          ),
        ),
        PageViewModel(
          title: Strings.onboardingLessonTitle,
          body: Strings.onboardingLessonBody,
          decoration: pageDecoration,
          image: const Image(
            image: AssetImage('assets/images/asteraceae.png'),
            width: 350,
            height: 250,
          ),
        ),
        PageViewModel(
          title: Strings.flowerCta,
          body:
              Strings.onboarding101Body,
          decoration: pageDecoration,
          image: const Image(
            image: AssetImage('assets/images/lily.png'),
            width: 350,
            height: 250,
          ),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      showSkipButton: false,
      showBackButton: true,
      back: const Icon(Icons.arrow_back),
      next: const Icon(Icons.arrow_forward),
      done: Text(Strings.begin,
          style: context.titleLarge
              ?.copyWith(color: Theme.of(context).colorScheme.primary)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: DotsDecorator(
        size: const Size(10.0, 10.0),
        color: Theme.of(context).colorScheme.secondary,
        activeSize: const Size(22.0, 10.0),
        activeShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        activeColor: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}

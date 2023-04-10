import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rafdev/src/feature/home/view/page/home_page.dart';
import 'package:rafdev/src/feature/onboarding/view/page/onboarding_page.dart';
import 'package:rafdev/src/feature/splash/view/page/splash_page.dart';

class SplashModule extends Module {
  @override
  List<Bind> get binds => const [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute(
      '/',
      child: (BuildContext context, args) => const SplashPage(),
    ),
    ChildRoute(
      '/onboarding',
      child: (BuildContext context, args) => const OnboardingPage(),
      children: []
    ),
    ChildRoute(
      '/home',
      child: (BuildContext context, args) => const HomePage(),
      children: []
    ),
  ];
}

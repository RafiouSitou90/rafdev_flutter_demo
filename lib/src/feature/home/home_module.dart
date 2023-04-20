import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rafdev/src/feature/onboarding/view/page/onboarding_page.dart';

import 'view/page/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => const [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute(
      '/home',
      child: (BuildContext context, __) => const HomePage(),
      children: [],
    ),
    ChildRoute(
      '/onboarding',
      child: (BuildContext context, args) => const OnboardingPage(),
    )
  ];
}

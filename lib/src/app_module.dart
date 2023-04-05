import 'package:flutter_modular/flutter_modular.dart';
import 'package:rafdev/src/feature/onboarding/onboarding_module.dart';

class Appmodule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: OnboardingModule()),
      ];
}

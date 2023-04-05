import 'package:flutter_modular/flutter_modular.dart';
import 'package:rafdev/src/feature/home/home_module.dart';

class OnboardingModule extends Module {
  @override
  List<Bind> get binds => const [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: HomeModule()),
      ];
}

import 'package:flutter_modular/flutter_modular.dart';

import 'view/page/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => const [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const HomePage(), children: []),
      ];
}

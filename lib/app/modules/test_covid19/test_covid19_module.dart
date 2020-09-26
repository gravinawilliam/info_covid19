import 'package:flutter_modular/flutter_modular.dart';
import '../../core/constants/constants.dart';
import 'repositories/test_covid19_repository.dart';
import 'test_covid19_controller.dart';

import 'test_covid19_page.dart';

class TestCovid19Module extends ChildModule {
  @override
  List<Bind> get binds => [
        $TestCovid19Repository,
        $TestCovid19Controller,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          RoutersConst.testCovid19,
          child: (_, args) => TestCovid19Page(),
        ),
      ];

  static Inject get to => Inject<TestCovid19Module>.of();
}

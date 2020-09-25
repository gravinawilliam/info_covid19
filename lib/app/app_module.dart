import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:info_covid19/app/modules/test_covid19/test_covid19_module.dart';
import 'app_controller.dart';
import 'app_widget.dart';
import 'core/constants/constants.dart';
import 'modules/base/base_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
        Bind((i) => Dio()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          RoutersConst.base,
          module: BaseModule(),
          transition: TransitionType.fadeIn,
        ),
        ModularRouter(
          RoutersConst.testCovid19,
          module: TestCovid19Module(),
          transition: TransitionType.fadeIn,
        ),
      ];

  @override
  Widget get bootstrap => AppWidget(controller: to.get<AppController>());

  static Inject get to => Inject<AppModule>.of();
}

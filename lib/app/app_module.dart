import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'app_controller.dart';
import 'app_widget.dart';
import 'core/constants/constants.dart';
import 'modules/base/base_module.dart';
import 'modules/base/submodules/continents_detail/continents_detail_module.dart';
import 'modules/base/submodules/country_detail/country_detail_module.dart';
import 'modules/base/submodules/test_covid19/test_covid19_module.dart';

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
          RoutersConst.countryDetail,
          module: CountryDetailModule(),
          transition: TransitionType.downToUp,
        ),
        ModularRouter(
          RoutersConst.continentsDetail,
          module: ContinentsDetailModule(),
          transition: TransitionType.downToUp,
        ),
        ModularRouter(
          RoutersConst.testCovid19,
          module: TestCovid19Module(),
          transition: TransitionType.rightToLeft,
        ),
      ];

  @override
  Widget get bootstrap => AppWidget(controller: to.get<AppController>());

  static Inject get to => Inject<AppModule>.of();
}

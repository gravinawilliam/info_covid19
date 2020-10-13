import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'app_controller.dart';
import 'app_widget.dart';
import 'core/constants/constants.dart';
import 'modules/base/base_module.dart';
import 'modules/base/submodules/country_detail/country_detail_module.dart';

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
          transition: TransitionType.fadeIn,
        ),
      ];

  @override
  Widget get bootstrap => AppWidget(controller: to.get<AppController>());

  static Inject get to => Inject<AppModule>.of();
}

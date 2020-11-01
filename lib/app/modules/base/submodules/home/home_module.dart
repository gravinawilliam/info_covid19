import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:info_covid19/app/modules/base/submodules/test_covid19/test_covid19_module.dart';
import '../../../../core/constants/constants.dart';
import 'home_controller.dart';
import 'home_page.dart';
import 'repositories/home_repository.dart';

class HomeModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        $HomeRepository,
        $HomeController,
        Bind(
          (i) => HasuraConnect(
            DataConst.hasuraUrl,
            localStorageDelegate: () => LocalStorageSharedPreferences(),
          ),
        ),
        Bind((i) => Dio()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          RoutersConst.home,
          child: (_, args) => HomePage(),
          transition: TransitionType.fadeIn,
        ),
        ModularRouter(
          RoutersConst.testCovid19,
          module: TestCovid19Module(),
        )
      ];

  static Inject get to => Inject<HomeModule>.of();

  @override
  Widget get view => HomePage();
}

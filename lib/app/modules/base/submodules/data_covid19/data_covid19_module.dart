import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:info_covid19/app/core/constants/all_constants/routers_const.dart';
import 'package:info_covid19/app/modules/base/submodules/country_detail/country_detail_page.dart';
import 'repositories/data_covid19_repository.dart';
import 'data_covid19_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'data_covid19_page.dart';

class DataCovid19Module extends WidgetModule {
  @override
  List<Bind> get binds => [
        $DataCovid19Repository,
        $DataCovid19Controller,
        Bind((i) => Dio()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          RoutersConst.dataCovid19,
          child: (_, args) => DataCovid19Page(),
          transition: TransitionType.upToDown,
          duration: Duration(seconds: 1),
        ),
      ];

  static Inject get to => Inject<DataCovid19Module>.of();

  @override
  Widget get view => DataCovid19Page();
}

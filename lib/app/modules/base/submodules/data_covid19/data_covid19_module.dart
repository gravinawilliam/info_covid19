import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/constants.dart';
import 'data_covid19_controller.dart';
import 'data_covid19_page.dart';
import 'repositories/data_covid19_repository.dart';
import 'widgets/list_continents/list_continents_controller.dart';
import 'widgets/list_country/list_country_controller.dart';

class DataCovid19Module extends WidgetModule {
  @override
  List<Bind> get binds => [
        $ListCountryController,
        $ListContinentsController,
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

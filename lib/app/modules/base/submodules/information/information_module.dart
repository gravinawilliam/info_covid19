import 'package:flutter/material.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:info_covid19/app/core/constants/all_constants/routers_const.dart';
import 'package:info_covid19/app/core/constants/constants.dart';
import 'repositories/information_repository.dart';
import 'information_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'information_page.dart';

class InformationModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        $InformationRepository,
        $InformationController,
        Bind(
          (i) => HasuraConnect(
            DataConst.hasuraUrl,
            localStorageDelegate: () => LocalStorageSharedPreferences(),
          ),
        ),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          RoutersConst.information,
          child: (_, args) => InformationPage(),
        ),
      ];

  static Inject get to => Inject<InformationModule>.of();

  @override
  Widget get view => InformationPage();
}

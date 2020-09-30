import 'package:dio/dio.dart';
import 'package:info_covid19/app/core/constants/constants.dart';
import 'repositories/country_detail_repository.dart';
import 'country_detail_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'country_detail_page.dart';

class CountryDetailModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $CountryDetailRepository,
        $CountryDetailController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          RoutersConst.countryDetail,
          child: (_, args) => CountryDetailPage(),
          transition: TransitionType.downToUp,
          duration: Duration(seconds: 1),
        ),
      ];

  static Inject get to => Inject<CountryDetailModule>.of();
}

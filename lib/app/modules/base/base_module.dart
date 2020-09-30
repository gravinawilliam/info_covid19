import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:info_covid19/app/modules/test_covid19/test_covid19_module.dart';
import '../../core/constants/constants.dart';
import 'base_controller.dart';
import 'base_page.dart';
import 'repositories/base_repository.dart';
import 'submodules/country_detail/country_detail_module.dart';
import 'submodules/country_detail/country_detail_page.dart';
import 'submodules/home/home_module.dart';

class BaseModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $BaseRepository,
        $BaseController,
        Bind((i) => Dio()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          RoutersConst.base,
          child: (_, args) => BasePage(),
        ),
        ModularRouter(
          RoutersConst.home,
          module: HomeModule(),
          transition: TransitionType.fadeIn,
        ),
        ModularRouter(
          RoutersConst.testCovid19,
          module: TestCovid19Module(),
          transition: TransitionType.fadeIn,
        ),
        ModularRouter(
          RoutersConst.countryDetail,
          module: CountryDetailModule(),
          transition: TransitionType.fadeIn,
        ),
      ];

  static Inject get to => Inject<BaseModule>.of();
}

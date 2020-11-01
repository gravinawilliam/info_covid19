import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:info_covid19/app/modules/base/submodules/test_covid19/test_covid19_module.dart';
import '../../core/constants/constants.dart';
import 'base_controller.dart';
import 'base_page.dart';
import 'submodules/continents_detail/continents_detail_module.dart';
import 'submodules/country_detail/country_detail_module.dart';
import 'submodules/data_covid19/data_covid19_module.dart';
import 'submodules/home/home_module.dart';

class BaseModule extends ChildModule {
  @override
  List<Bind> get binds => [
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
          RoutersConst.countryDetail,
          module: CountryDetailModule(),
          transition: TransitionType.downToUp,
        ),
        ModularRouter(
          RoutersConst.dataCovid19,
          module: DataCovid19Module(),
          transition: TransitionType.upToDown,
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

  static Inject get to => Inject<BaseModule>.of();
}

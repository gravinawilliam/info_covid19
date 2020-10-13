import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../core/constants/constants.dart';
import 'base_controller.dart';
import 'base_page.dart';
import 'repositories/base_repository.dart';
import 'submodules/country_detail/country_detail_module.dart';
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
          RoutersConst.countryDetail,
          module: CountryDetailModule(),
          transition: TransitionType.fadeIn,
        ),
      ];

  static Inject get to => Inject<BaseModule>.of();
}

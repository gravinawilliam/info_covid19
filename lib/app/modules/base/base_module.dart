import 'package:flutter_modular/flutter_modular.dart';
import '../../core/constants/constants.dart';
import 'base_controller.dart';
import 'base_page.dart';
import 'repositories/base_repository.dart';

class BaseModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $BaseRepository,
        $BaseController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          RoutersConst.base,
          child: (_, args) => BasePage(),
        ),
      ];

  static Inject get to => Inject<BaseModule>.of();
}

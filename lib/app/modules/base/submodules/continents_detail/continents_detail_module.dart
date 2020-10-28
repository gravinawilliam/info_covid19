import 'package:flutter_modular/flutter_modular.dart';
import '../../../../core/constants/constants.dart';
import 'continents_detail_controller.dart';
import 'continents_detail_page.dart';

class ContinentsDetailModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $ContinentsDetailController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          RoutersConst.continentsDetail,
          child: (_, args) => ContinentsDetailPage(),
          transition: TransitionType.downToUp,
          duration: Duration(seconds: 1),
        ),
      ];

  static Inject get to => Inject<ContinentsDetailModule>.of();
}

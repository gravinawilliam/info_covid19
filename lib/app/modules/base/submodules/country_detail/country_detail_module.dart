import 'package:flutter_modular/flutter_modular.dart';
import '../../../../core/constants/constants.dart';
import 'country_detail_controller.dart';
import 'country_detail_page.dart';

class CountryDetailModule extends ChildModule {
  @override
  List<Bind> get binds => [
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

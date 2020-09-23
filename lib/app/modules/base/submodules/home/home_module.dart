import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../core/constants/constants.dart';
import 'home_controller.dart';
import 'home_page.dart';
import 'repositories/home_repository.dart';

class HomeModule extends WidgetModule {
  @override
  List<Bind> get binds => [
        $HomeRepository,
        $HomeController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          RoutersConst.home,
          module: HomeModule(),
          transition: TransitionType.fadeIn,
        ),
      ];

  static Inject get to => Inject<HomeModule>.of();

  @override
  Widget get view => HomePage();
}

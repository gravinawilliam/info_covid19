import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../app_controller.dart';

part 'base_controller.g.dart';

@Injectable()
class BaseController = _BaseControllerBase with _$BaseController;

abstract class _BaseControllerBase with Store {
  final AppController appController;

  _BaseControllerBase(this.appController);

  PageController pageController = PageController();

  @observable
  int selectedIndex = 0;

  @action
  void changePage(int index) {
    pageController.jumpToPage(index);
    selectedIndex = index;
  }
}

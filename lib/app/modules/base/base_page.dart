import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../core/constants/constants.dart';
import 'base_controller.dart';
import 'submodules/data_covid19/data_covid19_module.dart';
import 'submodules/home/home_module.dart';
import 'widgets/base_all_widgets.dart';

class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends ModularState<BasePage, BaseController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller.pageController,
        children: [
          HomeModule(),
          DataCovid19Module(),
        ],
      ),
      bottomNavigationBar: BottomBar(
        controller: controller,
      ),
    );
  }
}

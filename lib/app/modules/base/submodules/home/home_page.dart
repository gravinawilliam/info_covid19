import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../core/constants/constants.dart';
import 'home_controller.dart';
import 'widgets/all_widgets/dados_locais_covid19.dart';
import 'widgets/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Observer(
      builder: (_) {
        return Scaffold(
          drawer: Drawer(
            elevation: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: SizeConst.statusBar,
                ),
                SwitchThemes(
                  controller: controller,
                ),
              ],
            ),
          ),
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            elevation: 0,
            title: Text(
              "Informa Covid-19".toUpperCase(),
              style: Theme.of(context).textTheme.headline1,
            ),
            centerTitle: true,
          ),
          body: (controller.countryModel != null)
              ? Container(
                  height: SizeConst.screenHeight,
                  width: SizeConst.screenWidth,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        FeaturedNews(controller: controller),
                        DadosLocaisCovid19(),
                      ],
                    ),
                  ),
                )
              : Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}

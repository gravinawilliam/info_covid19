import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:info_covid19/app/core/constants/constants.dart';
import 'package:info_covid19/app/core/models/models.dart';
import 'package:info_covid19/app/modules/base/submodules/home/home_controller.dart';

import '../widgets.dart';

class GraphDataCovid19 extends StatelessWidget {
  final HomeController controller;

  const GraphDataCovid19({this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        SizeConst.paddingHorizontal,
        SizeConst.paddingVertical * 0.7,
        SizeConst.paddingHorizontal,
        0,
      ),
      width: SizeConst.screenWidth,
      child: Column(
        children: [
          LocaleGraph(
            bandeiraUrl: controller.countryModel.countryInfo.flag,
            name: controller.countryModel.country,
          ),
          CardsDataCovid19(
            ativos: controller.countryModel.active,
            casosConfirmados: controller.countryModel.cases,
            obitos: controller.countryModel.deaths,
            recuperados: controller.countryModel.recovered,
          ),
          Grafico(
            populacao: controller.countryModel.population,
            ativos: controller.countryModel.active,
            casosConfirmados: controller.countryModel.cases,
            recuperados: controller.countryModel.recovered,
            mortes: controller.countryModel.deaths,
            controller: controller,
          )
        ],
      ),
    );
  }
}

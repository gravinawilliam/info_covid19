import 'package:flutter/material.dart';
import 'package:info_covid19/app/core/constants/constants.dart';
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
          LocaleGraph(),
          CardsDataCovid19(),
          Grafico(
            populacao: 220,
            ativos: 330,
            casosConfirmados: 444,
            recuperados: 123,
            mortes: 312,
            controller: controller,
          ),
        ],
      ),
    );
  }
}

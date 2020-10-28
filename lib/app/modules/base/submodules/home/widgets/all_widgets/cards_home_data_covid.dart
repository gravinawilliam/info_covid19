import 'package:flutter/material.dart';
import '../../../../../../core/constants/constants.dart';
import '../../../../../../core/widgets/widgets.dart';
import '../../home_controller.dart';
import '../widgets.dart';

class CardsDataCovid19 extends StatelessWidget {
  final int casosConfirmados;
  final int ativos;
  final int obitos;
  final int recuperados;
  final HomeController controller;

  const CardsDataCovid19({
    this.casosConfirmados,
    this.controller,
    this.ativos,
    this.obitos,
    this.recuperados,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: SizeConst.paddingHorizontal,
      ),
      alignment: Alignment.topCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardDataCovid19(
                color: DataColorsConst.casosConfirmados,
                number: casosConfirmados,
                title: LocaleProvider.of(context).cases,
                width: 0.5,
              ),
              CardDataCovid19(
                color: DataColorsConst.ativos,
                number: ativos,
                title: LocaleProvider.of(context).active,
                width: 0.5,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardDataCovid19(
                color: DataColorsConst.recuperados,
                number: recuperados,
                title: LocaleProvider.of(context).recovered,
                width: 0.5,
              ),
              CardDataCovid19(
                color: DataColorsConst.obitos,
                number: obitos,
                title: LocaleProvider.of(context).deaths,
                width: 0.5,
              ),
            ],
          ),
          ButtonVerGrafico(
            onPressed: controller.trocaIndexedStack,
            nameButton: controller.nameButtonDataCovid,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../constants/constants.dart';
import '../all_widgets/card_data_covid19.dart';

class CardsDataCovid extends StatelessWidget {
  final int casosConfirmados;
  final int ativos;
  final int obitos;
  final int recuperados;
  final int population;
  final int tests;
  final int critical;

  const CardsDataCovid({
    this.casosConfirmados,
    this.population,
    this.ativos,
    this.obitos,
    this.recuperados,
    this.tests,
    this.critical,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: SizeConst.paddingHorizontal,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CardDataCovid19(
            color: DataColorsConst.populacao,
            number: population,
            title: LocaleProvider.of(context).population,
            width: 1,
          ),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardDataCovid19(
                color: Color(0xFF791E6E),
                number: critical,
                title: "critical",
                width: 0.5,
              ),
              CardDataCovid19(
                color: Color(0xFF000000),
                number: tests,
                title: "Testes",
                width: 0.5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

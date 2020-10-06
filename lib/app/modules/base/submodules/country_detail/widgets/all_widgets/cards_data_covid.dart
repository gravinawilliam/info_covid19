import 'package:flutter/material.dart';
import '../../../../../../core/constants/constants.dart';
import '../../../home/widgets/all_widgets/card_data_covid19.dart';

class CardsDataCovid extends StatelessWidget {
  final int casosConfirmados;
  final int ativos;
  final int obitos;
  final int recuperados;
  final int population;

  const CardsDataCovid({
    this.casosConfirmados,
    this.population,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CardDataCovid19(
            color: DataColorsConst.populacao,
            number: population,
            title: "População",
            width: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CardDataCovid19(
                color: DataColorsConst.casosConfirmados,
                number: casosConfirmados,
                title: "Casos",
                width: 0.5,
              ),
              CardDataCovid19(
                color: DataColorsConst.ativos,
                number: ativos,
                title: "Ativos",
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
                title: "Recuperados",
                width: 0.5,
              ),
              CardDataCovid19(
                color: DataColorsConst.obitos,
                number: obitos,
                title: "Obitos",
                width: 0.5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

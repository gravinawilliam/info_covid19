import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:info_covid19/app/core/constants/constants.dart';
import 'package:info_covid19/app/modules/base/submodules/home/widgets/all_widgets/card_data_covid19.dart';

class CardsDataCovid extends StatelessWidget {
  final int casosConfirmados;
  final int ativos;
  final int obitos;
  final int recuperados;
  final bool isOpacity;

  const CardsDataCovid({
    this.casosConfirmados,
    this.ativos,
    this.obitos,
    this.recuperados,
    this.isOpacity,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: isOpacity ? 1 : 0,
      duration: Duration(
        seconds: 1,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: SizeConst.paddingHorizontal,
        ),
        height: SizeConst.screenHeight * 0.27,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardDataCovid19(
                  color: DataColorsConst.casosConfirmados,
                  number: casosConfirmados,
                  title: "Casos",
                ),
                CardDataCovid19(
                  color: DataColorsConst.ativos,
                  number: ativos,
                  title: "Ativos",
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
                ),
                CardDataCovid19(
                  color: DataColorsConst.obitos,
                  number: obitos,
                  title: "Obitos",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

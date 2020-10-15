import 'package:flutter/material.dart';
import '../../../../../../core/constants/constants.dart';
import '../widgets.dart';

class CardsDataCovid19 extends StatelessWidget {
  final int casosConfirmados;
  final int ativos;
  final int obitos;
  final int recuperados;
  final bool isOpacity;

  const CardsDataCovid19({
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
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          ],
        ),
      ),
    );
  }
}

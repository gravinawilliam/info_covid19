import 'package:flutter/material.dart';
import 'package:info_covid19/app/modules/base/submodules/home/widgets/widgets.dart';
import '../../../../../../core/constants/constants.dart';

class CardsDataCovid19 extends StatelessWidget {
  final int ativos;
  final int casosConfirmados;
  final int recuperados;
  final int obitos;

  const CardsDataCovid19({
    this.ativos,
    this.casosConfirmados,
    this.recuperados,
    this.obitos,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (SizeConst.screenWidth - (2 * SizeConst.paddingHorizontal)) * 0.8,
      child: Column(
        children: [
          CardDataCovid19(
            color: DataColorsConst.casosConfirmados,
            title: "Casos",
            quantidade: casosConfirmados.toString(),
            index: 0,
          ),
          CardDataCovid19(
            color: DataColorsConst.recuperados,
            title: "Recuperados",
            quantidade: recuperados.toString(),
            index: 1,
          ),
          CardDataCovid19(
            color: DataColorsConst.ativos,
            title: "Ativos",
            quantidade: ativos.toString(),
            index: 2,
          ),
          CardDataCovid19(
            color: DataColorsConst.obitos,
            title: "Obitos",
            index: 3,
            quantidade: obitos.toString(),
          ),
        ],
      ),
    );
  }
}

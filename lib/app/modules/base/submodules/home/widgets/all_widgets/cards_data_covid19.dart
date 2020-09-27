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
      width: SizeConst.screenWidth - (2 * SizeConst.paddingHorizontal),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: [
          CardDataCovid19(
            color: DataColorsConst.casosConfirmados,
            width: 0.475,
            title: "Casos Confirmados",
            quantidade: casosConfirmados.toString(),
          ),
          CardDataCovid19(
            color: DataColorsConst.recuperados,
            width: 0.475,
            title: "Recuperados",
            quantidade: recuperados.toString(),
          ),
          CardDataCovid19(
            color: DataColorsConst.ativos,
            width: 0.475,
            title: "Ativos",
            quantidade: ativos.toString(),
          ),
          CardDataCovid19(
            color: DataColorsConst.obitos,
            width: 0.475,
            title: "Obitos",
            quantidade: obitos.toString(),
          ),
        ],
      ),
    );
  }
}

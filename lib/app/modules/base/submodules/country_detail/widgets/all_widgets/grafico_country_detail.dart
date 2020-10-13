import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/constants/constants.dart';
import '../../../country_detail/country_detail_controller.dart';
import '../../../home/widgets/all_widgets/elemento_legenda.dart';

class GraficoCountryDetail extends StatelessWidget {
  final int populacao;
  final int ativos;
  final int casosConfirmados;
  final int recuperados;
  final int mortes;
  final CountryDetailController controller;

  const GraficoCountryDetail({
    @required this.populacao,
    @required this.ativos,
    @required this.casosConfirmados,
    @required this.recuperados,
    @required this.controller,
    @required this.mortes,
  });

  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    var radius = SizeConst.screenWidth * .15;
    return Container(
      margin: EdgeInsets.only(
        top: SizeConst.paddingVertical,
        bottom: SizeConst.paddingVertical,
        left: SizeConst.paddingHorizontal,
        right: SizeConst.paddingHorizontal,
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              bottom: SizeConst.paddingVertical * 0.5,
            ),
            child: Text(
              "% baseada em cima da quantidade de casos.",
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: SizeConst.screenHeight * 0.27,
            child: PieChart(
              PieChartData(
                borderData: FlBorderData(
                  show: false,
                ),
                sectionsSpace: 0,
                centerSpaceRadius: radius * .9,
                sections: List.generate(
                  3,
                  (i) {
                    switch (i) {
                      case 0:
                        return PieChartSectionData(
                          color: DataColorsConst.ativos,
                          value: controller.calculaPorcentagem(
                            casosConfirmados,
                            ativos,
                          ),
                          title: "${controller.calculaPorcentagem(
                                casosConfirmados,
                                ativos,
                              ).toStringAsFixed(2)}%",
                          radius: radius,
                          titleStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xffffffff)),
                        );
                      case 1:
                        return PieChartSectionData(
                          color: DataColorsConst.recuperados,
                          value: controller.calculaPorcentagem(
                            casosConfirmados,
                            recuperados,
                          ),
                          title: "${controller.calculaPorcentagem(
                                casosConfirmados,
                                recuperados,
                              ).toStringAsFixed(2)}%",
                          radius: radius,
                          titleStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xffffffff)),
                        );
                      case 2:
                        return PieChartSectionData(
                          color: DataColorsConst.obitos,
                          value: controller.calculaPorcentagem(
                            casosConfirmados,
                            mortes,
                          ),
                          title: "${controller.calculaPorcentagem(
                                casosConfirmados,
                                mortes,
                              ).toStringAsFixed(2)}%",
                          radius: radius,
                          titleStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffffffff),
                          ),
                        );
                      default:
                        return null;
                    }
                  },
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: SizeConst.paddingVertical * 0.5,
            ),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              runAlignment: WrapAlignment.spaceBetween,
              children: [
                ElementoLegenda(
                  color: DataColorsConst.ativos,
                  title: "Ativos",
                ),
                ElementoLegenda(
                  color: DataColorsConst.recuperados,
                  title: "Recuperados",
                ),
                ElementoLegenda(
                  color: DataColorsConst.obitos,
                  title: "Obitos",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

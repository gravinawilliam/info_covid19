import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/constants/constants.dart';
import '../../home_controller.dart';
import 'elemento_legenda.dart';

class Grafico extends StatelessWidget {
  final int populacao;
  final int ativos;
  final int casosConfirmados;
  final int recuperados;
  final int mortes;
  final bool isOpacity;
  final HomeController controller;

  const Grafico({
    @required this.populacao,
    @required this.isOpacity,
    @required this.ativos,
    @required this.casosConfirmados,
    @required this.recuperados,
    @required this.mortes,
    @required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    var radius = SizeConst.screenWidth * .15;
    return AnimatedOpacity(
      opacity: !isOpacity ? 1 : 0,
      duration: Duration(
        seconds: 1,
      ),
      child: Container(
        margin: EdgeInsets.only(
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
              alignment: Alignment.center,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                runAlignment: WrapAlignment.center,
                alignment: WrapAlignment.center,
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
      ),
    );
  }
}

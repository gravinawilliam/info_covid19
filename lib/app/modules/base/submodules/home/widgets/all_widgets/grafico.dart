import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/constants/constants.dart';
import '../../home_controller.dart';

class Grafico extends StatelessWidget {
  final int populacao;
  final int ativos;
  final int casosConfirmados;
  final int recuperados;
  final int mortes;
  final HomeController controller;

  const Grafico({
    @required this.populacao,
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
    return PieChart(
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
                  color: ColorsConst.ativos,
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
                  color: ColorsConst.recuperados,
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
                  color: ColorsConst.mortes,
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
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../../../../core/widgets/widgets.dart';
import '../../home_controller.dart';
import '../widgets.dart';

class TabWithCardsAndGraphic extends StatelessWidget {
  final int deaths;
  final int recovered;
  final int active;
  final int cases;
  final int population;
  final HomeController controller;

  const TabWithCardsAndGraphic({
    @required this.deaths,
    @required this.recovered,
    @required this.active,
    @required this.cases,
    @required this.population,
    @required this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return IndexedStack(
          index: controller.indexedStackDataCovid,
          children: [
            CardsDataCovid19(
              obitos: deaths,
              recuperados: recovered,
              ativos: active,
              casosConfirmados: cases,
              controller: controller,
            ),
            Graphic(
              populacao: population,
              ativos: active,
              casosConfirmados: cases,
              recuperados: recovered,
              mortes: deaths,
              controller: controller,
              buttonOpacity: true,
              nameButton: controller.nameButtonDataCovid,
              onPressButton: controller.trocaIndexedStack,
            ),
          ],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:info_covid19/app/modules/base/submodules/home/home_controller.dart';

import '../widgets.dart';
import 'button_ver_grafico.dart';
import 'buttons_locais.dart';
import 'cards_data_covid.dart';

class DadosLocaisCovid19 extends StatelessWidget {
  final HomeController controller;

  const DadosLocaisCovid19({
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Column(
          children: [
            ButtonsLocais(
              country: controller.countryModel.country,
            ),
            Stack(
              children: [
                CardsDataCovid(
                  obitos: controller.countryModel.deaths,
                  recuperados: controller.countryModel.recovered,
                  ativos: controller.countryModel.active,
                  casosConfirmados: controller.countryModel.cases,
                  isOpacity: controller.isOpacity,
                ),
                Grafico(
                  populacao: controller.countryModel.population,
                  ativos: controller.countryModel.active,
                  casosConfirmados: controller.countryModel.cases,
                  recuperados: controller.countryModel.recovered,
                  mortes: controller.countryModel.deaths,
                  controller: controller,
                  isOpacity: controller.isOpacity,
                ),
              ],
            ),
            ButtonVerGrafico(
              onPressed: controller.trocaOpacidadeDataCovid19,
            ),
          ],
        );
      },
    );
  }
}

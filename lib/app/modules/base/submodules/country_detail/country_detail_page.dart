import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/models/models.dart';
import 'country_detail_controller.dart';
import 'widgets/all_widgets/cards_data_covid.dart';
import 'widgets/all_widgets/grafico_country_detail.dart';
import 'widgets/widgets.dart';

class CountryDetailPage extends StatefulWidget {
  @override
  _CountryDetailPageState createState() => _CountryDetailPageState();
}

class _CountryDetailPageState
    extends ModularState<CountryDetailPage, CountryDetailController> {
  @override
  Widget build(BuildContext context) {
    final CountryModel countryModel = ModalRoute.of(context).settings.arguments;
    SizeConst().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: Container(
        height: SizeConst.screenHeight + SizeConst.statusBar,
        width: SizeConst.screenWidth,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              HeaderCountry(
                imageUrl: countryModel.countryInfo.flag,
                name: countryModel.country.toString(),
              ),
              CardsDataCovid(
                ativos: countryModel.active,
                casosConfirmados: countryModel.cases,
                obitos: countryModel.deaths,
                recuperados: countryModel.recovered,
                population: countryModel.population,
              ),
              GraficoCountryDetail(
                populacao: countryModel.population,
                ativos: countryModel.active,
                casosConfirmados: countryModel.cases,
                recuperados: countryModel.recovered,
                mortes: countryModel.deaths,
                controller: controller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

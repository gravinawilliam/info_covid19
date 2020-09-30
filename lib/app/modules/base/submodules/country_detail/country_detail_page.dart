import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:info_covid19/app/core/constants/constants.dart';
import 'package:info_covid19/app/core/models/all_models/country_model.dart';
import 'package:info_covid19/app/modules/base/submodules/country_detail/widgets/header_country.dart';
import 'package:info_covid19/app/modules/base/submodules/home/widgets/widgets.dart';
import 'country_detail_controller.dart';
import 'widgets/cards_data_covid.dart';
import 'widgets/grafico_country_detail.dart';

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
      body: Container(
        height: SizeConst.screenHeight + SizeConst.statusBar,
        width: SizeConst.screenWidth,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: SizeConst.statusBar,
                color: Theme.of(context).primaryColor,
              ),
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

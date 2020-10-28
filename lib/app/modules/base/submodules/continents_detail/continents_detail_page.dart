import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/models/models.dart';
import '../../../../core/widgets/widgets.dart';
import 'continents_detail_controller.dart';

class ContinentsDetailPage extends StatefulWidget {
  @override
  _ContinentsDetailPageState createState() => _ContinentsDetailPageState();
}

class _ContinentsDetailPageState
    extends ModularState<ContinentsDetailPage, ContinentsDetailController> {
  @override
  Widget build(BuildContext context) {
    final ContinentsModel countryModel =
        ModalRoute.of(context).settings.arguments;
    SizeConst().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        title: Text(
          countryModel.continent,
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      body: Container(
        height: SizeConst.screenHeight + SizeConst.statusBar,
        width: SizeConst.screenWidth,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              CardsDataCovid(
                ativos: countryModel.active,
                casosConfirmados: countryModel.cases,
                obitos: countryModel.deaths,
                recuperados: countryModel.recovered,
                population: countryModel.population,
              ),
              Graphic(
                populacao: countryModel.population,
                ativos: countryModel.active,
                casosConfirmados: countryModel.cases,
                recuperados: countryModel.recovered,
                mortes: countryModel.deaths,
                controller: controller,
                buttonOpacity: false,
                onPressButton: () {},
                nameButton: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

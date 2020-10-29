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
    final ContinentsModel continentsModel =
        ModalRoute.of(context).settings.arguments;
    SizeConst().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        title: Text(
          continentsModel.continent,
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
                ativos: continentsModel.active,
                casosConfirmados: continentsModel.cases,
                obitos: continentsModel.deaths,
                recuperados: continentsModel.recovered,
                population: continentsModel.population,
              ),
              Graphic(
                populacao: continentsModel.population,
                ativos: continentsModel.active,
                casosConfirmados: continentsModel.cases,
                recuperados: continentsModel.recovered,
                mortes: continentsModel.deaths,
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

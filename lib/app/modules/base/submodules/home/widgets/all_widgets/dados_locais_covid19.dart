import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import '../../../../../../core/constants/constants.dart';
import '../../../../../../core/widgets/widgets.dart';
import '../../home_controller.dart';
import '../widgets.dart';

class DadosLocaisCovid19 extends StatefulWidget {
  @override
  _DadosLocaisCovid19State createState() => _DadosLocaisCovid19State();
}

class _DadosLocaisCovid19State
    extends ModularState<DadosLocaisCovid19, HomeController>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: SizeConst.paddingVertical),
              child: DefaultTabController(
                length: 2,
                child: TabBar(
                  controller: _tabController,
                  labelStyle: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontSize: 22),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Theme.of(context).textSelectionColor,
                  unselectedLabelColor:
                      Theme.of(context).unselectedWidgetColor.withOpacity(0.8),
                  isScrollable: true,
                  indicator: MD2Indicator(
                    indicatorSize: MD2IndicatorSize.full,
                    indicatorHeight: 5,
                    indicatorColor: Color(0xFF6F46A6),
                  ),
                  tabs: <Widget>[
                    Tab(
                      text: LocaleProvider.of(context).brazil,
                    ),
                    Tab(
                      text: LocaleProvider.of(context).south_america,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: SizeConst.screenHeight * 0.7,
              alignment: Alignment.topCenter,
              child: TabBarView(
                controller: _tabController,
                children: [
                  IndexedStack(
                    index: controller.indexedStackDataCovid,
                    children: [
                      CardsDataCovid19(
                        obitos: controller.countryModel.deaths,
                        recuperados: controller.countryModel.recovered,
                        ativos: controller.countryModel.active,
                        casosConfirmados: controller.countryModel.cases,
                        controller: controller,
                      ),
                      Graphic(
                        populacao: controller.countryModel.population,
                        ativos: controller.countryModel.active,
                        casosConfirmados: controller.countryModel.cases,
                        recuperados: controller.countryModel.recovered,
                        mortes: controller.countryModel.deaths,
                        controller: controller,
                        buttonOpacity: true,
                        nameButton: controller.nameButtonDataCovid,
                        onPressButton: controller.trocaIndexedStack,
                      ),
                    ],
                  ),
                  IndexedStack(
                    index: controller.indexedStackDataCovid,
                    children: [
                      CardsDataCovid19(
                        obitos: controller.continentModel.deaths,
                        recuperados: controller.continentModel.recovered,
                        ativos: controller.continentModel.active,
                        casosConfirmados: controller.continentModel.cases,
                        controller: controller,
                      ),
                      Graphic(
                        populacao: controller.continentModel.population,
                        ativos: controller.continentModel.active,
                        casosConfirmados: controller.continentModel.cases,
                        recuperados: controller.continentModel.recovered,
                        mortes: controller.continentModel.deaths,
                        controller: controller,
                        buttonOpacity: true,
                        nameButton: controller.nameButtonDataCovid,
                        onPressButton: controller.trocaIndexedStack,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import '../../../../../../core/constants/constants.dart';
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
              height: SizeConst.screenHeight * 0.6,
              alignment: Alignment.topCenter,
              child: TabBarView(
                controller: _tabController,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  TabWithCardsAndGraphic(
                    deaths: controller.countryModel.deaths,
                    controller: controller,
                    recovered: controller.countryModel.recovered,
                    active: controller.countryModel.active,
                    cases: controller.countryModel.cases,
                    population: controller.countryModel.population,
                  ),
                  TabWithCardsAndGraphic(
                    deaths: controller.continentModel.deaths,
                    controller: controller,
                    recovered: controller.continentModel.recovered,
                    active: controller.continentModel.active,
                    cases: controller.continentModel.cases,
                    population: controller.continentModel.population,
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

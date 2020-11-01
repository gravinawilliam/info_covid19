import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/models/models.dart';
import '../../../../core/widgets/widgets.dart';
import 'country_detail_controller.dart';
import 'widgets/widgets.dart';

class CountryDetailPage extends StatefulWidget {
  @override
  _CountryDetailPageState createState() => _CountryDetailPageState();
}

class _CountryDetailPageState
    extends ModularState<CountryDetailPage, CountryDetailController>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final CountryModel countryModel = ModalRoute.of(context).settings.arguments;
    SizeConst().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        title: Text(
          countryModel.country,
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      body: Container(
        height: SizeConst.screenHeight + SizeConst.statusBar,
        width: SizeConst.screenWidth,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderCountry(
                imageUrl: countryModel.countryInfo.flag,
                continent: controller.translatesName(countryModel.continent),
              ),
              DefaultTabController(
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
                  physics: BouncingScrollPhysics(),
                  indicator: MD2Indicator(
                    indicatorSize: MD2IndicatorSize.full,
                    indicatorHeight: 5,
                    indicatorColor: Theme.of(context).primaryColor,
                  ),
                  dragStartBehavior: DragStartBehavior.start,
                  tabs: <Widget>[
                    Tab(
                      text: LocaleProvider.of(context).covid19_data,
                    ),
                    Tab(
                      text: LocaleProvider.of(context).graphics,
                    ),
                  ],
                ),
              ),
              Container(
                height: SizeConst.screenHeight,
                child: TabBarView(
                  controller: _tabController,
                  dragStartBehavior: DragStartBehavior.start,
                  physics: BouncingScrollPhysics(),
                  children: [
                    CardsDataCovid(
                      ativos: countryModel.active,
                      casosConfirmados: countryModel.cases,
                      obitos: countryModel.deaths,
                      recuperados: countryModel.recovered,
                      population: countryModel.population,
                      tests: countryModel.tests,
                      critical: countryModel.critical,
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
            ],
          ),
        ),
      ),
    );
  }
}

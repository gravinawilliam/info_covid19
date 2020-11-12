import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/models/models.dart';
import '../../../../core/widgets/widgets.dart';
import 'continents_detail_controller.dart';

class ContinentsDetailPage extends StatefulWidget {
  @override
  _ContinentsDetailPageState createState() => _ContinentsDetailPageState();
}

class _ContinentsDetailPageState
    extends ModularState<ContinentsDetailPage, ContinentsDetailController>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

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
                      ativos: continentsModel.active,
                      casosConfirmados: continentsModel.cases,
                      obitos: continentsModel.deaths,
                      recuperados: continentsModel.recovered,
                      population: continentsModel.population,
                      tests: continentsModel.tests,
                      critical: continentsModel.critical,
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
            ],
          ),
        ),
      ),
    );
  }
}

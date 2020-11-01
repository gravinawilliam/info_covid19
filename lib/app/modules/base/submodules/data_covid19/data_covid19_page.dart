import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import '../../../../core/constants/constants.dart';
import 'data_covid19_controller.dart';
import 'widgets/list_continents/list_continents_widget.dart';
import 'widgets/list_country/list_country_widget.dart';

class DataCovid19Page extends StatefulWidget {
  @override
  _DataCovid19PageState createState() => _DataCovid19PageState();
}

class _DataCovid19PageState
    extends ModularState<DataCovid19Page, DataCovid19Controller>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        title: Text(
          LocaleProvider.of(context).covid19_data.toUpperCase(),
          style: Theme.of(context).textTheme.headline1,
        ),
        centerTitle: true,
      ),
      body: Container(
        height: SizeConst.screenHeight,
        width: SizeConst.screenWidth,
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
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
                  indicator: MD2Indicator(
                    indicatorSize: MD2IndicatorSize.full,
                    indicatorHeight: 5,
                    indicatorColor: Color(0xFF6F46A6),
                  ),
                  tabs: <Widget>[
                    Tab(
                      text: LocaleProvider.of(context).countries,
                    ),
                    Tab(
                      text: LocaleProvider.of(context).continnets,
                    ),
                  ],
                ),
              ),
              Container(
                height: SizeConst.screenHeight,
                alignment: Alignment.bottomCenter,
                child: TabBarView(
                  controller: _tabController,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    ListCountryWidget(),
                    ListContinentsWidget(),
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

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/models/models.dart';
import 'data_covid19_controller.dart';
import 'data_covid19_status.dart';
import 'widgets/buttons_locais.dart';
import 'widgets/card_country.dart';

class DataCovid19Page extends StatefulWidget {
  @override
  _DataCovid19PageState createState() => _DataCovid19PageState();
}

class _DataCovid19PageState
    extends ModularState<DataCovid19Page, DataCovid19Controller> {
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
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                ButtonsLocais(),
                Observer(
                  // ignore: missing_return
                  builder: (_) {
                    if (controller.status == DataCovid19Status.loading) {
                      return Container(
                        alignment: Alignment.center,
                        height: SizeConst.screenHeight,
                        child: Column(
                          children: [
                            CircularProgressIndicator(),
                            Text(
                              LocaleProvider.of(context).loading,
                              style: TextStyle(
                                fontSize: 32,
                              ),
                            ),
                          ],
                        ),
                      );
                    } else if (controller.status == DataCovid19Status.success) {
                      final list =
                          controller.status.value as List<CountryModel>;
                      if (list.isNotEmpty) {
                        return ListView.builder(
                          shrinkWrap: true,
                          addAutomaticKeepAlives: true,
                          itemCount: list.length,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            var model = list[index];
                            return CardCountry(
                              bandeiraUrl: model.countryInfo.flag,
                              confirmados: model.cases,
                              name: model.country,
                              onTap: () => Modular.to.pushNamed(
                                RoutersConst.countryDetail,
                                arguments: CountryModel(
                                  active: model.active,
                                  cases: model.cases,
                                  country: model.country,
                                  countryInfo: model.countryInfo,
                                  population: model.population,
                                  deaths: model.deaths,
                                  recovered: model.recovered,
                                ),
                              ),
                            );
                          },
                        );
                      }
                    } else {
                      return Center(
                        child: Text(LocaleProvider.of(context).empty_list),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ));
  }
}

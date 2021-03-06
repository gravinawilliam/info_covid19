import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../../core/constants/constants.dart';
import '../../../../../../core/models/models.dart';
import 'list_country_controller.dart';
import 'list_country_status.dart';
import 'widgets/card_country.dart';

class ListCountryWidget extends StatefulWidget {
  @override
  _ListCountryWidgetState createState() => _ListCountryWidgetState();
}

class _ListCountryWidgetState
    extends ModularState<ListCountryWidget, ListCountryController> {
  @override
  Widget build(BuildContext context) {
    return Observer(
      // ignore: missing_return
      builder: (_) {
        if (controller.status == ListCountryStatus.loading) {
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
        } else if (controller.status == ListCountryStatus.success) {
          final list = controller.status.value as List<CountryModel>;
          if (list.isNotEmpty) {
            return ListView.builder(
              shrinkWrap: true,
              addAutomaticKeepAlives: true,
              itemCount: list.length,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                var model = list[index];
                return CardCountry(
                  quantidade: list.length,
                  index: index,
                  bandeiraUrl: model.countryInfo.flag,
                  confirmados: model.cases,
                  name: controller.translatesName(model.country),
                  onTap: () => Modular.to.pushNamed(
                    RoutersConst.countryDetail,
                    arguments: CountryModel(
                      active: model.active,
                      cases: model.cases,
                      country: controller.translatesName(model.country),
                      countryInfo: model.countryInfo,
                      population: model.population,
                      deaths: model.deaths,
                      recovered: model.recovered,
                      tests: model.tests,
                      casesPerOneMillion: model.casesPerOneMillion,
                      continent: model.continent,
                      critical: model.critical,
                      oneCasePerPeople: model.oneCasePerPeople,
                      oneDeathPerPeople: model.oneDeathPerPeople,
                      testsPerOneMillion: model.testsPerOneMillion,
                      todayCases: model.todayCases,
                      todayDeaths: model.todayDeaths,
                      todayRecovered: model.todayRecovered,
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
    );
  }
}

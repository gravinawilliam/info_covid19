import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:info_covid19/app/core/constants/constants.dart';
import 'package:info_covid19/app/core/models/all_models/country_model.dart';
import 'package:info_covid19/app/modules/base/submodules/data_covid19/data_covid19_status.dart';
import 'data_covid19_controller.dart';
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
    return Observer(builder: (_) {
      if (controller.status == DataCovid19Status.loading) {
        return Scaffold(
          body: Container(
            alignment: Alignment.center,
            height: SizeConst.screenHeight,
            child: Column(
              children: [
                CircularProgressIndicator(),
                Text(
                  "Carregando",
                  style: TextStyle(
                    fontSize: 32,
                  ),
                ),
              ],
            ),
          ),
        );
      } else if (controller.status == DataCovid19Status.success) {
        final list = controller.status.value as List<CountryModel>;
        if (list.isNotEmpty) {
          return Scaffold(
              body: Container(
            height: SizeConst.screenHeight,
            width: SizeConst.screenWidth,
            margin: EdgeInsets.symmetric(
              horizontal: SizeConst.paddingHorizontal,
            ),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    width: SizeConst.screenWidth -
                        (2 * SizeConst.paddingHorizontal),
                    child: Text(
                      "Dados de cada país",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    margin: EdgeInsets.symmetric(
                      vertical: SizeConst.paddingVertical,
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: list.length,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      var model = list[index];
                      return CardCountry(
                        bandeiraUrl: model.countryInfo.flag,
                        confirmados: model.cases,
                        name: model.country,
                        populacao: model.population,
                      );
                    },
                  ),
                ],
              ),
            ),
          ));
        } else {
          return Center(
            child: Text("Lista vazia"),
          );
        }
      }
    });
  }
}

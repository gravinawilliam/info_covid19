import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../../core/constants/constants.dart';
import '../../../../../../core/models/models.dart';
import 'list_continents_controller.dart';
import 'list_continents_status.dart';
import 'widgets/card_continent.dart';

class ListContinentsWidget extends StatefulWidget {
  @override
  _ListContinentsWidgetState createState() => _ListContinentsWidgetState();
}

class _ListContinentsWidgetState
    extends ModularState<ListContinentsWidget, ListContinentsController> {
  @override
  Widget build(BuildContext context) {
    return Observer(
      // ignore: missing_return
      builder: (_) {
        if (controller.status == ListContinentsStatus.loading) {
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
        } else if (controller.status == ListContinentsStatus.success) {
          final list = controller.status.value as List<ContinentsModel>;
          if (list.isNotEmpty) {
            return ListView.builder(
              shrinkWrap: true,
              addAutomaticKeepAlives: true,
              itemCount: list.length,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                var model = list[index];
                return CardContinent(
                  quantidade: list.length,
                  index: index,
                  confirmados: model.cases,
                  name: controller.translatesName(model.continent),
                  onTap: () => Modular.to.pushNamed(
                    RoutersConst.continentsDetail,
                    arguments: ContinentsModel(
                      active: model.active,
                      cases: model.cases,
                      continent: model.continent,
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
    );
  }
}

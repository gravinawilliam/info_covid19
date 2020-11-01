import 'package:info_covid19/app/core/constants/constants.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'country_detail_controller.g.dart';

@Injectable()
class CountryDetailController = _CountryDetailControllerBase
    with _$CountryDetailController;

abstract class _CountryDetailControllerBase with Store {
  @action
  double calculaPorcentagem(int casosConfirmados, int dados) {
    var resultado = ((dados * 100) / casosConfirmados);
    return resultado;
  }

  @action
  String translatesName(String nameContinent) {
    switch (nameContinent) {
      case "North America":
        nameContinent = LocaleProvider.current.north_america;
        break;
      case "Asia":
        nameContinent = LocaleProvider.current.asia;
        break;
      case "South America":
        nameContinent = LocaleProvider.current.south_america;
        break;
      case "Europe":
        nameContinent = LocaleProvider.current.europe;
        break;
      case "Africa":
        nameContinent = LocaleProvider.current.africa;
        break;
      case "Australia/Oceania":
        nameContinent = LocaleProvider.current.australia_oceania;
        break;
      default:
    }
    return nameContinent;
  }
}

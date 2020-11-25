import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import '../../../../../../core/constants/constants.dart';
import '../../repositories/interfaces/data_covid19_repository_interface.dart';

import 'list_continents_status.dart';

part 'list_continents_controller.g.dart';

@Injectable()
class ListContinentsController = _ListContinentsControllerBase
    with _$ListContinentsController;

abstract class _ListContinentsControllerBase with Store {
  final IDataCovid19Repository repository;
  // ignore: type_init_formals
  _ListContinentsControllerBase(IDataCovid19Repository this.repository) {
    getAllContinents();
  }

  @observable
  ListContinentsStatus status = ListContinentsStatus.none;

  @action
  Future<void> getAllContinents() async {
    status = ListContinentsStatus.loading;
    try {
      final response = await repository.getAllContinents();
      status = ListContinentsStatus.success..value = response;
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      status = ListContinentsStatus.error..value = e;
    }
  }

  @action
  String translatesName(String name) {
    switch (name) {
      case "North America":
        name = LocaleProvider.current.north_america;
        break;
      case "Asia":
        name = LocaleProvider.current.asia;
        break;
      case "South America":
        name = LocaleProvider.current.south_america;
        break;
      case "Europe":
        name = LocaleProvider.current.europe;
        break;
      case "Africa":
        name = LocaleProvider.current.africa;
        break;
      case "Australia/Oceania":
        name = LocaleProvider.current.australia_oceania;
        break;
      default:
    }
    return name;
  }
}

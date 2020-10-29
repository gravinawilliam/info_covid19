import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../repositories/interfaces/data_covid19_repository_interface.dart';

import 'list_country_status.dart';

part 'list_country_controller.g.dart';

@Injectable()
class ListCountryController = _ListCountryControllerBase
    with _$ListCountryController;

abstract class _ListCountryControllerBase with Store {
  final IDataCovid19Repository repository;
  // ignore: type_init_formals
  _ListCountryControllerBase(IDataCovid19Repository this.repository) {
    getAllCountries();
  }

  @observable
  ListCountryStatus status = ListCountryStatus.none;

  @action
  Future<void> getAllCountries() async {
    status = ListCountryStatus.loading;
    try {
      final response = await repository.getAllCountries();
      status = ListCountryStatus.success..value = response;
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      status = ListCountryStatus.error..value = e;
    }
  }
}

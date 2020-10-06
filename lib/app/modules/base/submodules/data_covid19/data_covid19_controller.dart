import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'data_covid19_status.dart';
import 'repositories/interfaces/data_covid19_repository_interface.dart';

part 'data_covid19_controller.g.dart';

@Injectable()
class DataCovid19Controller = _DataCovid19ControllerBase
    with _$DataCovid19Controller;

abstract class _DataCovid19ControllerBase with Store {
  final IDataCovid19Repository repository;
  _DataCovid19ControllerBase(IDataCovid19Repository this.repository) {
    getAllCountries();
  }

  @observable
  DataCovid19Status status = DataCovid19Status.none;

  @action
  Future<void> getAllCountries() async {
    status = DataCovid19Status.loading;
    try {
      final response = await repository.getAllCountries();
      status = DataCovid19Status.success..value = response;
    } catch (e) {
      status = DataCovid19Status.error..value = e;
    }
  }
}

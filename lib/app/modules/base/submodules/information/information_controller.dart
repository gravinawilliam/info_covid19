import 'package:info_covid19/app/core/models/all_models/tips_model.dart';
import 'package:info_covid19/app/core/models/models.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'repositories/interfaces/information_repository_interface.dart';

part 'information_controller.g.dart';

@Injectable()
class InformationController = _InformationControllerBase
    with _$InformationController;

abstract class _InformationControllerBase with Store {
  final IInformationRepository repository;

  // ignore: type_init_formals
  _InformationControllerBase(IInformationRepository this.repository) {
    getListTips();
    getListSymptoms();
  }

  @observable
  ObservableStream<List<TipsModel>> tipsList;

  @observable
  ObservableStream<List<SymptomsModel>> symptomsList;

  @action
  void getListTips() {
    tipsList = repository.getListTips().asObservable();
  }

  @action
  void getListSymptoms() {
    symptomsList = repository.getListSymptoms().asObservable();
  }
}

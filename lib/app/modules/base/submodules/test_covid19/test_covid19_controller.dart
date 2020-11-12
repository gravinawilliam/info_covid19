import 'package:info_covid19/app/core/constants/constants.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'test_covid19_controller.g.dart';

@Injectable()
class TestCovid19Controller = _TestCovid19ControllerBase
    with _$TestCovid19Controller;

abstract class _TestCovid19ControllerBase with Store {
  @observable
  int sintomasComunsContador = 0;

  @observable
  int sintomasMenosComunsContador = 0;

  @observable
  int sintomasGravesContador = 0;

  @observable
  List<String> sintomasPaciente = [];

  @action
  guardaSintomas(value) {
    return sintomasPaciente = value;
  }

  @action
  verificaSintomasPaciente() {
    sintomasGravesContador = 0;
    sintomasMenosComunsContador = 0;
    sintomasComunsContador = 0;
    for (var i = 0; i < sintomasPaciente.length; i++) {
      for (var j = 0; j < DataConst.listaSintomasComuns.length; j++) {
        if (DataConst.listaSintomasComuns[j] == sintomasPaciente[i]) {
          sintomasComunsContador++;
        }
      }
      for (var j = 0; j < DataConst.listaSintomasMenosComuns.length; j++) {
        if (DataConst.listaSintomasMenosComuns[j] == sintomasPaciente[i]) {
          sintomasMenosComunsContador++;
        }
      }
      for (var j = 0; j < DataConst.listaSintomasGraves.length; j++) {
        if (DataConst.listaSintomasGraves[j] == sintomasPaciente[i]) {
          sintomasGravesContador++;
        }
      }
    }
  }

  @action
  String defineResultadoTeste() {
    if (sintomasComunsContador > 0 &&
        (sintomasMenosComunsContador == 0 || sintomasMenosComunsContador > 0) &&
        sintomasGravesContador == 0) {
      return "Há chances de ser covid19";
    } else if (sintomasComunsContador == 0 &&
        sintomasMenosComunsContador > 0 &&
        sintomasGravesContador == 0) {
      return "Sintomas menos cumuns";
    } else if ((sintomasComunsContador == 0 || sintomasComunsContador > 0) &&
        (sintomasMenosComunsContador == 0 || sintomasMenosComunsContador > 0) &&
        sintomasGravesContador > 0) {
      return "Procure um médico";
    } else {
      return "Quebrow";
    }
  }
}

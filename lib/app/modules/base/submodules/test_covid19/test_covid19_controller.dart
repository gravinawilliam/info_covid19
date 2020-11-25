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
        if (DataConst.listaSintomasComuns[j] ==
            translatesName(sintomasPaciente[i])) {
          sintomasComunsContador++;
        }
      }
      for (var j = 0; j < DataConst.listaSintomasMenosComuns.length; j++) {
        if (DataConst.listaSintomasMenosComuns[j] ==
            translatesName(sintomasPaciente[i])) {
          sintomasMenosComunsContador++;
        }
      }
      for (var j = 0; j < DataConst.listaSintomasGraves.length; j++) {
        if (DataConst.listaSintomasGraves[j] ==
            translatesName(sintomasPaciente[i])) {
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
      return LocaleProvider.current.messageTestOne;
    } else if (sintomasComunsContador == 0 &&
        sintomasMenosComunsContador > 0 &&
        sintomasGravesContador == 0) {
      return LocaleProvider.current.messageTestTwo;
    } else if ((sintomasComunsContador == 0 || sintomasComunsContador > 0) &&
        (sintomasMenosComunsContador == 0 || sintomasMenosComunsContador > 0) &&
        sintomasGravesContador > 0) {
      return LocaleProvider.current.messageTestThree;
    } else {
      return LocaleProvider.current.messageTestError;
    }
  }

  @action
  String translatesName(String name) {
    switch (name) {
      case "Febre":
        name = LocaleProvider.current.fever;
        break;
      case "Tosse seca":
        name = LocaleProvider.current.dryCough;
        break;
      case "Cansaço":
        name = LocaleProvider.current.tiredness;
        break;
      case "Dores e desconfortos":
        name = LocaleProvider.current.painAndDiscomfort;
        break;
      case "Dor de garganta":
        name = LocaleProvider.current.soreThroat;
        break;
      case "Diarreia":
        name = LocaleProvider.current.diarrhea;
        break;
      case "Conjuntivite":
        name = LocaleProvider.current.conjunctivitis;
        break;
      case "Dor de cabeça":
        name = LocaleProvider.current.headache;
        break;
      case "Perda de paladar ou olfato":
        name = LocaleProvider.current.lossofTasteorSmell;
        break;
      case "Dor ou pressão no peito":
        name = LocaleProvider.current.chestPain;
        break;
      case "Dificuldade de respirar ou falta de ar":
        name = LocaleProvider.current.shortnessofBreathe;
        break;
      case "Perda de fala ou movimento":
        name = LocaleProvider.current.lossofSpeechorMovement;
        break;
      default:
    }
    return name;
  }
}

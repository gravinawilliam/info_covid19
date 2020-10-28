import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'continents_detail_controller.g.dart';

@Injectable()
class ContinentsDetailController = _ContinentsDetailControllerBase
    with _$ContinentsDetailController;

abstract class _ContinentsDetailControllerBase with Store {
  @action
  double calculaPorcentagem(int casosConfirmados, int dados) {
    var resultado = ((dados * 100) / casosConfirmados);
    return resultado;
  }
}

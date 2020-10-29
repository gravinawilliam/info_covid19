import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'data_covid19_controller.g.dart';

@Injectable()
class DataCovid19Controller = _DataCovid19ControllerBase
    with _$DataCovid19Controller;

abstract class _DataCovid19ControllerBase with Store {}

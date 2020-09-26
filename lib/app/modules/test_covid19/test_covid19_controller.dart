import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'test_covid19_controller.g.dart';

@Injectable()
class TestCovid19Controller = _TestCovid19ControllerBase
    with _$TestCovid19Controller;

abstract class _TestCovid19ControllerBase with Store {}

import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'country_detail_controller.g.dart';

@Injectable()
class CountryDetailController = _CountryDetailControllerBase
    with _$CountryDetailController;

abstract class _CountryDetailControllerBase with Store {}

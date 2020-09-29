import 'package:flutter_modular/flutter_modular.dart';

abstract class IDataCovid19Repository implements Disposable {
  Future getAllCountries();
}

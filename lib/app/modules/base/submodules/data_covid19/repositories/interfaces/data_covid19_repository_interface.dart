import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../../core/models/models.dart';

abstract class IDataCovid19Repository implements Disposable {
  Future<List<CountryModel>> getAllCountries();
  Future<List<ContinentsModel>> getAllContinents();
}

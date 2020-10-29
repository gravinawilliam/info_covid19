import 'package:flutter_modular/flutter_modular.dart';
import 'package:info_covid19/app/core/models/all_models/continents_model.dart';
import 'package:info_covid19/app/core/models/all_models/country_model.dart';

abstract class IDataCovid19Repository implements Disposable {
  Future<List<CountryModel>> getAllCountries();
  Future<List<ContinentsModel>> getAllContinents();
}

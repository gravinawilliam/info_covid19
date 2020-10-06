import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../core/models/models.dart';

import 'interfaces/data_covid19_repository_interface.dart';

part 'data_covid19_repository.g.dart';

@Injectable()
class DataCovid19Repository implements IDataCovid19Repository {
  final Dio dio;

  DataCovid19Repository(this.dio);

  @override
  Future getAllCountries() async {
    dio.interceptors.add(
      DioCacheManager(CacheConfig(
        baseUrl: "https://disease.sh/v3/covid-19/countries",
      )).interceptor,
    );
    final response = await dio.get("https://disease.sh/v3/covid-19/countries",
        options: buildCacheOptions(
          Duration(hours: 12),
        ));

    return (response.data as List)
        .map((e) => CountryModel.fromJson(e))
        .toList();
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}

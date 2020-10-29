import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/models/models.dart';
import 'interfaces/data_covid19_repository_interface.dart';
part 'data_covid19_repository.g.dart';

@Injectable()
class DataCovid19Repository implements IDataCovid19Repository {
  final Dio dio;

  DataCovid19Repository(this.dio);

  @override
  Future<List<CountryModel>> getAllCountries() async {
    dio.interceptors.add(
      DioCacheManager(
        CacheConfig(
          baseUrl: DataConst.countriesUrl,
        ),
      ).interceptor,
    );
    final response = await dio.get(
      DataConst.countriesUrl,
      options: buildCacheOptions(
        Duration(hours: 12),
      ),
    );
    return (response.data as List)
        .map((e) => CountryModel.fromJson(e))
        .toList();
  }

  @override
  Future<List<ContinentsModel>> getAllContinents() async {
    dio.interceptors.add(
      DioCacheManager(
        CacheConfig(
          baseUrl: DataConst.continentsUrl,
        ),
      ).interceptor,
    );
    final response = await dio.get(
      DataConst.continentsUrl,
      options: buildCacheOptions(
        Duration(hours: 12),
      ),
    );
    return (response.data as List)
        .map((e) => ContinentsModel.fromJson(e))
        .toList();
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}

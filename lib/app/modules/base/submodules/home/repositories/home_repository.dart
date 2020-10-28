import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import '../../../../../core/documents/documents.dart';
import '../../../../../core/models/models.dart';

import 'interfaces/home_repository_interface.dart';

part 'home_repository.g.dart';

@Injectable()
class HomeRepository implements IHomeRepository {
  final HasuraConnect connect;
  final Dio dio = Dio();

  HomeRepository(this.connect);

  @override
  Stream<List<NewsModel>> getFeaturedNews() => connect
      .subscription(getFeaturedNewsSubscription)
      .map((event) => (event['data']['news'] as List)
          .map((json) => NewsModel.fromJson(json))
          .toList());

  @override
  Future<CountryModel> getDataCountry() async {
    dio.interceptors.add(
      DioCacheManager(CacheConfig(
        baseUrl:
            "https://disease.sh/v3/covid-19/countries/brazil?yesterday=true&twoDaysAgo=false&strict=true&allowNull=true",
      )).interceptor,
    );
    final response = await dio.get(
        "https://disease.sh/v3/covid-19/countries/brazil?yesterday=true&twoDaysAgo=false&strict=true&allowNull=true",
        options: buildCacheOptions(
          Duration(hours: 12),
        ));
    if (response.statusCode != 200) {
      throw Exception();
    } else {
      return CountryModel.fromJson(response.data);
    }
  }

  @override
  Future<ContinentsModel> getDataContinent() async {
    dio.interceptors.add(
      DioCacheManager(CacheConfig(
        baseUrl:
            "https://disease.sh/v3/covid-19/continents/South%20America?yesterday=true&twoDaysAgo=false&strict=true&allowNull=true",
      )).interceptor,
    );
    final response = await dio.get(
        "https://disease.sh/v3/covid-19/continents/South%20America?yesterday=true&twoDaysAgo=false&strict=true&allowNull=true",
        options: buildCacheOptions(
          Duration(hours: 12),
        ));
    if (response.statusCode != 200) {
      throw Exception();
    } else {
      return ContinentsModel.fromJson(response.data);
    }
  }

  @override
  void dispose() {}
}

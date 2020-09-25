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
  final Dio client;

  HomeRepository(this.connect, this.client);

  @override
  Stream<List<NewsModel>> getFeaturedNews() => connect
      .subscription(getFeaturedNewsSubscription)
      .map((event) => (event['data']['news'] as List)
          .map((json) => NewsModel.fromJson(json))
          .toList());

  @override
  void dispose() {}
}

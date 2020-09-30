import 'package:dio/native_imp.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'interfaces/country_detail_repository_interface.dart';

part 'country_detail_repository.g.dart';

@Injectable()
class CountryDetailRepository implements ICountryDetailRepository {
  final DioForNative client;

  CountryDetailRepository(this.client);

  Future fetchPost() async {
    final response =
        await client.get('https://jsonplaceholder.typicode.com/posts/1');
    return response.data;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}

import 'package:dio/native_imp.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'interfaces/test_covid19_repository_interface.dart';

part 'test_covid19_repository.g.dart';

@Injectable()
class TestCovid19Repository implements ITestCovid19Repository {
  final DioForNative client;

  TestCovid19Repository(this.client);

  Future fetchPost() async {
    final response =
        await client.get('https://jsonplaceholder.typicode.com/posts/1');
    return response.data;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}

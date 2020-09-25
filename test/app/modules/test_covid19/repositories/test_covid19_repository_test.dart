import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dio/dio.dart';

import 'package:info_covid19/app/modules/test_covid19/repositories/interfaces/test_covid19_repository_interface.dart';

class MockClient extends Mock implements Dio {}

void main() {
  ITestCovid19Repository repository;
  // MockClient client;

  setUp(() {
    // client = MockClient();
    // repository = TestCovid19Repository(client);
  });

  group('TestCovid19Repository Test', () {
    //  test("First Test", () {
    //    expect(repository, isInstanceOf<TestCovid19Repository>());
    //  });

    test('returns a Post if the http call completes successfully', () async {
      //    when(client.get('https://jsonplaceholder.typicode.com/posts/1'))
      //        .thenAnswer((_) async =>
      //            Response(data: {'title': 'Test'}, statusCode: 200));
      //    Map<String, dynamic> data = await repository.fetchPost(client);
      //    expect(data['title'], 'Test');
    });
  });
}

import 'package:flutter_modular/flutter_modular.dart';

abstract class ITestCovid19Repository implements Disposable {
  Future fetchPost();
}

import 'package:flutter_modular/flutter_modular.dart';

abstract class ICountryDetailRepository implements Disposable {
  Future fetchPost();
}

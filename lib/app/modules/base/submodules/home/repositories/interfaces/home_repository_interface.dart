import 'package:flutter_modular/flutter_modular.dart';

abstract class IHomeRepository implements Disposable {
  Future fetchPost();
}

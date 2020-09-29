import 'package:flutter_modular/flutter_modular.dart';

abstract class IBaseRepository implements Disposable {
  Future fetchPost();
}

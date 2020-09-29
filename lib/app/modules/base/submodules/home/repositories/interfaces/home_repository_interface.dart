import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../../core/models/models.dart';

abstract class IHomeRepository implements Disposable {
  Stream<List<NewsModel>> getFeaturedNews();
  Future<CountryModel> getDataCountry();
}

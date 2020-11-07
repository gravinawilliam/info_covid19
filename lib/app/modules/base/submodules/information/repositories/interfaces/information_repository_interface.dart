import 'package:flutter_modular/flutter_modular.dart';
import '../../../../../../core/models/models.dart';

abstract class IInformationRepository implements Disposable {
  Stream<List<TipsModel>> getListTips();
  Stream<List<SymptomsModel>> getListSymptoms();
}

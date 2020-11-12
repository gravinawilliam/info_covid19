import 'package:flutter_modular/flutter_modular.dart';
import 'package:hasura_connect/hasura_connect.dart';
import 'package:info_covid19/app/core/documents/all_documents/tips_document.dart';
import 'package:info_covid19/app/core/documents/documents.dart';
import 'package:info_covid19/app/core/models/models.dart';

import 'interfaces/information_repository_interface.dart';

part 'information_repository.g.dart';

@Injectable()
class InformationRepository implements IInformationRepository {
  final HasuraConnect connect;

  InformationRepository(this.connect);

  @override
  Stream<List<TipsModel>> getListTips() => connect
      .subscription(getListTipsSubscription)
      .map((event) => (event['data']['tips'] as List)
          .map((json) => TipsModel.fromJson(json))
          .toList());
  @override
  Stream<List<SymptomsModel>> getListSymptoms() => connect
      .subscription(getListSymptomsSubscription)
      .map((event) => (event['data']['symptoms'] as List)
          .map((json) => SymptomsModel.fromJson(json))
          .toList());

  //dispose will be called automatically
  @override
  void dispose() {}
}

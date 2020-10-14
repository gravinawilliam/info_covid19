enum DataCovid19Status { loading, success, error, none }

extension DataCovid19StatusExt on DataCovid19Status {
  static var _value;
  // ignore: type_annotate_public_apis
  get value => _value;
   // ignore: type_annotate_public_apis
  set value(value) => _value = value;
}

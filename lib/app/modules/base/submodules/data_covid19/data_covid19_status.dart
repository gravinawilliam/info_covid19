enum DataCovid19Status { loading, success, error, none }

extension DataCovid19StatusExt on DataCovid19Status {
  static var _value;
  get value => _value;
  set value(value) => _value = value;
}

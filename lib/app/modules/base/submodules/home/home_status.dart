enum HomeStatus { loading, success, error, none }

extension HomeStatusExt on HomeStatus {
  static var _value;
  get value => _value;
  set value(value) => _value = value;
}

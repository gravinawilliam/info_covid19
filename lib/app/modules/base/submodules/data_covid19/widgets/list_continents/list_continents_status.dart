enum ListContinentsStatus { loading, success, error, none }

extension ListContinentsStatusExt on ListContinentsStatus {
  static var _value;
  // ignore: type_annotate_public_apis
  get value => _value;
  // ignore: type_annotate_public_apis
  set value(value) => _value = value;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_covid19_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $DataCovid19Controller = BindInject(
  (i) => DataCovid19Controller(i<IDataCovid19Repository>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DataCovid19Controller on _DataCovid19ControllerBase, Store {
  final _$statusAtom = Atom(name: '_DataCovid19ControllerBase.status');

  @override
  DataCovid19Status get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(DataCovid19Status value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  final _$getAllCountriesAsyncAction =
      AsyncAction('_DataCovid19ControllerBase.getAllCountries');

  @override
  Future<void> getAllCountries() {
    return _$getAllCountriesAsyncAction.run(() => super.getAllCountries());
  }

  @override
  String toString() {
    return '''
status: ${status}
    ''';
  }
}

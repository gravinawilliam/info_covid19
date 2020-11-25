// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_country_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ListCountryController = BindInject(
  (i) => ListCountryController(i<IDataCovid19Repository>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListCountryController on _ListCountryControllerBase, Store {
  final _$statusAtom = Atom(name: '_ListCountryControllerBase.status');

  @override
  ListCountryStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(ListCountryStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  final _$getAllCountriesAsyncAction =
      AsyncAction('_ListCountryControllerBase.getAllCountries');

  @override
  Future<void> getAllCountries() {
    return _$getAllCountriesAsyncAction.run(() => super.getAllCountries());
  }

  final _$_ListCountryControllerBaseActionController =
      ActionController(name: '_ListCountryControllerBase');

  @override
  String translatesName(String name) {
    final _$actionInfo = _$_ListCountryControllerBaseActionController
        .startAction(name: '_ListCountryControllerBase.translatesName');
    try {
      return super.translatesName(name);
    } finally {
      _$_ListCountryControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
status: ${status}
    ''';
  }
}

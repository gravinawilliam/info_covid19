// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_continents_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $ListContinentsController = BindInject(
  (i) => ListContinentsController(i<IDataCovid19Repository>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListContinentsController on _ListContinentsControllerBase, Store {
  final _$statusAtom = Atom(name: '_ListContinentsControllerBase.status');

  @override
  ListContinentsStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(ListContinentsStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  final _$getAllContinentsAsyncAction =
      AsyncAction('_ListContinentsControllerBase.getAllContinents');

  @override
  Future<void> getAllContinents() {
    return _$getAllContinentsAsyncAction.run(() => super.getAllContinents());
  }

  final _$_ListContinentsControllerBaseActionController =
      ActionController(name: '_ListContinentsControllerBase');

  @override
  String translatesName(String name) {
    final _$actionInfo = _$_ListContinentsControllerBaseActionController
        .startAction(name: '_ListContinentsControllerBase.translatesName');
    try {
      return super.translatesName(name);
    } finally {
      _$_ListContinentsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
status: ${status}
    ''';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_detail_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $CountryDetailController = BindInject(
  (i) => CountryDetailController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CountryDetailController on _CountryDetailControllerBase, Store {
  final _$_CountryDetailControllerBaseActionController =
      ActionController(name: '_CountryDetailControllerBase');

  @override
  double calculaPorcentagem(int casosConfirmados, int dados) {
    final _$actionInfo = _$_CountryDetailControllerBaseActionController
        .startAction(name: '_CountryDetailControllerBase.calculaPorcentagem');
    try {
      return super.calculaPorcentagem(casosConfirmados, dados);
    } finally {
      _$_CountryDetailControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String translatesName(String nameContinent) {
    final _$actionInfo = _$_CountryDetailControllerBaseActionController
        .startAction(name: '_CountryDetailControllerBase.translatesName');
    try {
      return super.translatesName(nameContinent);
    } finally {
      _$_CountryDetailControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'information_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $InformationController = BindInject(
  (i) => InformationController(i<IInformationRepository>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$InformationController on _InformationControllerBase, Store {
  final _$tipsListAtom = Atom(name: '_InformationControllerBase.tipsList');

  @override
  ObservableStream<List<TipsModel>> get tipsList {
    _$tipsListAtom.reportRead();
    return super.tipsList;
  }

  @override
  set tipsList(ObservableStream<List<TipsModel>> value) {
    _$tipsListAtom.reportWrite(value, super.tipsList, () {
      super.tipsList = value;
    });
  }

  final _$_InformationControllerBaseActionController =
      ActionController(name: '_InformationControllerBase');

  @override
  void getListTips() {
    final _$actionInfo = _$_InformationControllerBaseActionController
        .startAction(name: '_InformationControllerBase.getListTips');
    try {
      return super.getListTips();
    } finally {
      _$_InformationControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tipsList: ${tipsList}
    ''';
  }
}

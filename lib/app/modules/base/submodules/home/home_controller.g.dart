// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(i<IHomeRepository>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$newsListAtom = Atom(name: '_HomeControllerBase.newsList');

  @override
  ObservableStream<List<NewsModel>> get newsList {
    _$newsListAtom.reportRead();
    return super.newsList;
  }

  @override
  set newsList(ObservableStream<List<NewsModel>> value) {
    _$newsListAtom.reportWrite(value, super.newsList, () {
      super.newsList = value;
    });
  }

  final _$countryModelAtom = Atom(name: '_HomeControllerBase.countryModel');

  @override
  CountryModel get countryModel {
    _$countryModelAtom.reportRead();
    return super.countryModel;
  }

  @override
  set countryModel(CountryModel value) {
    _$countryModelAtom.reportWrite(value, super.countryModel, () {
      super.countryModel = value;
    });
  }

  final _$getDataCountryAsyncAction =
      AsyncAction('_HomeControllerBase.getDataCountry');

  @override
  Future getDataCountry() {
    return _$getDataCountryAsyncAction.run(() => super.getDataCountry());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void getListFeaturedNews() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.getListFeaturedNews');
    try {
      return super.getListFeaturedNews();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  double calculaPorcentagem(int casosConfirmados, int dados) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.calculaPorcentagem');
    try {
      return super.calculaPorcentagem(casosConfirmados, dados);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
newsList: ${newsList},
countryModel: ${countryModel}
    ''';
  }
}

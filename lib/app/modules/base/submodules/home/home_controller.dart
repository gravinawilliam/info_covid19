import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../app_controller.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/models/models.dart';
import 'repositories/interfaces/home_repository_interface.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final AppController appController;
  final IHomeRepository repository;

  // ignore: type_init_formals
  _HomeControllerBase(IHomeRepository this.repository, this.appController) {
    getListFeaturedNews();
    getDataCountry();
    getDataContinent();
  }

  @observable
  ObservableStream<List<NewsModel>> newsList;

  @observable
  CountryModel countryModel;

  @observable
  ContinentsModel continentModel;

  @observable
  int indexedStackDataCovid = 0;

  @observable
  String nameButtonDataCovid = LocaleProvider.current.see_graph;

  @observable
  double opacidadeCardsDatacovid = 1.0;

  @action
  void trocaIndexedStack() {
    if (indexedStackDataCovid == 0) {
      indexedStackDataCovid = 1;
      nameButtonDataCovid = LocaleProvider.current.see_data;
    } else {
      indexedStackDataCovid = 0;
      nameButtonDataCovid = LocaleProvider.current.see_graph;
    }
  }

  @action
  void getListFeaturedNews() {
    newsList = repository.getFeaturedNews().asObservable();
  }

  @action
  double calculaPorcentagem(int casosConfirmados, int dados) {
    var resultado = ((dados * 100) / casosConfirmados);
    return resultado;
  }

  @action
  // ignore: type_annotate_public_apis
  getDataCountry() async {
    try {
      countryModel = await repository.getDataCountry();
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      return Container(
        height: 300,
        width: 300,
        child: CircularProgressIndicator(),
      );
    }
  }

  @action
  // ignore: type_annotate_public_apis
  getDataContinent() async {
    try {
      continentModel = await repository.getDataContinent();
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      return Container(
        height: 300,
        width: 300,
        child: CircularProgressIndicator(),
      );
    }
  }
}

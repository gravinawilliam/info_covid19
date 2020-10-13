import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../app_controller.dart';
import '../../../../core/models/models.dart';
import 'repositories/interfaces/home_repository_interface.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final AppController appController;
  final IHomeRepository repository;

  _HomeControllerBase(IHomeRepository this.repository, this.appController) {
    getListFeaturedNews();
    getDataCountry();
  }

  @observable
  ObservableStream<List<NewsModel>> newsList;

  @observable
  CountryModel countryModel;

  @observable
  bool isOpacity = true;

  @observable
  double opacidadeCardsDatacovid = 1.0;

  @action
  trocaOpacidadeDataCovid19() {
    isOpacity = !isOpacity;
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
  getDataCountry() async {
    try {
      countryModel = await repository.getDataCountry();
    } catch (exception) {
      return CircularProgressIndicator();
    }
  }
}

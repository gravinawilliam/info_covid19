import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../../../core/models/models.dart';
import 'repositories/interfaces/home_repository_interface.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  _HomeControllerBase(IHomeRepository this.repository) {
    getListFeaturedNews();
    getDataCountry();
  }

  final IHomeRepository repository;

  @observable
  ObservableStream<List<NewsModel>> newsList;

  @observable
  CountryModel countryModel;

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

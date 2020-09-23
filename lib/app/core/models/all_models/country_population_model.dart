class CountryPopulationModel {
  String name;
  int idCountry;
  int population;

  CountryPopulationModel({
    this.name,
    this.idCountry,
    this.population,
  });

  factory CountryPopulationModel.fromJson(Map doc) => CountryPopulationModel(
        name: doc['name'],
        population: doc['population'],
        idCountry: doc['id_country'],
      );
}

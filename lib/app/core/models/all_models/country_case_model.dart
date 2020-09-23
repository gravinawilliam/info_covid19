class CountryCaseModel {
  String name;
  int deathCases;
  int confirmedCases;
  int recoveredCases;
  int activeCases;
  int idCountry;

  CountryCaseModel({
    this.name,
    this.deathCases,
    this.confirmedCases,
    this.recoveredCases,
    this.activeCases,
    this.idCountry,
  });

  factory CountryCaseModel.fromJson(Map doc) => CountryCaseModel(
        name: doc['name'],
        deathCases: doc['death_cases'],
        confirmedCases: doc['confirmed_cases'],
        recoveredCases: doc['recovered_cases'],
        activeCases: doc['active_cases'],
        idCountry: doc['id_country'],
      );
}

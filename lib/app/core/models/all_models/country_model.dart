class CountryModel {
  int updated;
  String country;
  CountryInfo countryInfo;
  int cases;
  int todayCases;
  int deaths;
  int todayDeaths;
  int recovered;
  int todayRecovered;
  int active;
  int critical;
  int casesPerOneMillion;
  int deathsPerOneMillion;
  int tests;
  int testsPerOneMillion;
  int population;
  String continent;
  int oneCasePerPeople;
  int oneDeathPerPeople;
  int oneTestPerPeople;
  double activePerOneMillion;
  double recoveredPerOneMillion;
  double criticalPerOneMillion;

  CountryModel({
    this.country,
    this.cases,
    this.population,
    this.continent,
    this.todayCases,
    this.deaths,
    this.todayDeaths,
    this.recovered,
    this.todayRecovered,
    this.active,
    this.casesPerOneMillion,
    this.countryInfo,
  });

  factory CountryModel.fromJson(Map doc) => CountryModel(
        country: doc['country'],
        countryInfo: CountryInfo.fromJson(doc['countryInfo']),
        cases: doc['cases'],
        population: doc['population'],
        continent: doc['continent'],
        todayCases: doc['todayCases'],
        deaths: doc['deaths'],
        todayDeaths: doc['todayDeaths'],
        recovered: doc['recovered'],
        todayRecovered: doc['todayRecovered'],
        active: doc['active'],
        casesPerOneMillion: doc['casesPerOneMillion'],
      );
}

class CountryInfo {
  String flag;

  CountryInfo({this.flag});

  factory CountryInfo.fromJson(Map doc) => CountryInfo(
        flag: doc['flag'],
      );
}

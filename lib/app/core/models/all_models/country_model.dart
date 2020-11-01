class CountryModel {
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
  int population;
  int tests;
  int testsPerOneMillion;
  String continent;
  int oneCasePerPeople;
  int oneDeathPerPeople;

  CountryModel({
    this.country,
    this.countryInfo,
    this.cases,
    this.todayCases,
    this.deaths,
    this.todayDeaths,
    this.recovered,
    this.todayRecovered,
    this.active,
    this.critical,
    this.casesPerOneMillion,
    this.tests,
    this.testsPerOneMillion,
    this.population,
    this.continent,
    this.oneCasePerPeople,
    this.oneDeathPerPeople,
  });

  factory CountryModel.fromJson(Map doc) => CountryModel(
        country: doc['country'],
        countryInfo: CountryInfo.fromJson(doc['countryInfo']),
        cases: doc['cases'],
        todayCases: doc['todayCases'],
        deaths: doc['deaths'],
        todayDeaths: doc['todayDeaths'],
        recovered: doc['recovered'],
        todayRecovered: doc['todayRecovered'],
        active: doc['active'],
        critical: doc['critical'],
        casesPerOneMillion: doc['casesPerOneMillion'],
        population: doc['population'],
        tests: doc['tests'],
        testsPerOneMillion: doc['testsPerOneMillion'],
        continent: doc['continent'],
        oneCasePerPeople: doc['oneCasePerPeople'],
        oneDeathPerPeople: doc['oneDeathPerPeople'],
      );
}

class CountryInfo {
  String flag;
  String iso2;

  CountryInfo({
    this.flag,
    this.iso2,
  });

  factory CountryInfo.fromJson(Map doc) => CountryInfo(
        flag: doc['flag'],
        iso2: doc['iso2'],
      );
}

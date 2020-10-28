class ContinentsModel {
  int updated;
  int cases;
  int todayCases;
  int deaths = 0;
  int todayDeaths;
  int recovered;
  int todayRecovered;
  int active;
  int critical;
  double casesPerOneMillion;
  double deathsPerOneMillion;
  int tests;
  double testsPerOneMillion;
  int population;
  String continent;
  double activePerOneMillion;
  double recoveredPerOneMillion;
  double criticalPerOneMillion;

  ContinentsModel({
    this.updated,
    this.cases,
    this.todayCases,
    this.deaths,
    this.todayDeaths,
    this.recovered,
    this.todayRecovered,
    this.active,
    this.critical,
    this.casesPerOneMillion,
    this.deathsPerOneMillion,
    this.tests,
    this.testsPerOneMillion,
    this.population,
    this.continent,
    this.activePerOneMillion,
    this.recoveredPerOneMillion,
    this.criticalPerOneMillion,
  });

  factory ContinentsModel.fromJson(Map doc) => ContinentsModel(
        cases: doc['cases'],
        deaths: doc['deaths'],
        recovered: doc['recovered'],
        todayCases: doc['todayCases'],
        todayDeaths: doc['todayDeaths'],
        todayRecovered: doc['todayRecovered'],
        active: doc['active'],
        critical: doc['critical'],
        casesPerOneMillion: doc['casesPerOneMillion'],
        deathsPerOneMillion: doc['deathsPerOneMillion'],
        tests: doc['tests'],
        testsPerOneMillion: doc['testsPerOneMillion'],
        population: doc['population'],
        continent: doc['continent'],
        activePerOneMillion: doc['activePerOneMillion'],
        recoveredPerOneMillion: doc['recoveredPerOneMillion'],
        criticalPerOneMillion: doc['criticalPerOneMillion'],
      );
}

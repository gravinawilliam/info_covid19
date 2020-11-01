class DataConst {
  static const hasuraUrl = "https://kind-monkey-42.hasura.app/v1/graphql";
  static const continentsUrl =
      "https://disease.sh/v3/covid-19/continents?yesterday=false&twoDaysAgo=false&allowNull=true";
  static const countriesUrl =
      "http://disease.sh/v3/covid-19/countries?yesterday=true&twoDaysAgo=false&allowNull=false";

  static const List<String> listaTodosSintomas = [
    "Febre",
    "Tosse seca",
    "Cansaço",
    "Dores e desconfortos",
    "dor de garganta",
    "diarreia",
    "conjuntivite",
    "dor de cabeça",
    "perda de paladar ou olfato",
    "dor ou pressão no peito",
    "dificuldade de respirar ou falta de ar",
    "perda de fala ou movimento"
  ];
  static const List<String> listaSintomasComuns = [
    "dificuldade de respirar ou falta de ar",
    "dor ou pressão no peito",
    "perda de fala ou movimento"
  ];
  static const List<String> listaSintomasMenosComuns = [
    "Febre",
    "Tosse seca",
    "Cansaço"
  ];
  static const List<String> listaSintomasGraves = [
    "Dores e desconfortos",
    "dor de garganta",
    "diarreia",
    "conjuntivite",
    "dor de cabeça",
    "perda de paladar ou olfato",
    "dor ou pressão no peito",
  ];
}

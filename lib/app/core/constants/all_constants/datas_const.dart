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
    "Dor de garganta",
    "Diarreia",
    "Conjuntivite",
    "Dor de cabeça",
    "Perda de paladar ou olfato",
    "Dor ou pressão no peito",
    "Dificuldade de respirar ou falta de ar",
    "Perda de fala ou movimento"
  ];
  static const List<String> listaSintomasComuns = [
    "Dor ou pressão no peito",
    "Dificuldade de respirar ou falta de ar",
    "Perda de fala ou movimento"
  ];
  static const List<String> listaSintomasMenosComuns = [
    "Febre",
    "Tosse seca",
    "Cansaço",
  ];
  static const List<String> listaSintomasGraves = [
    "Dores e desconfortos",
    "Dor de garganta",
    "Diarreia",
    "Conjuntivite",
    "Dor de cabeça",
    "Perda de paladar ou olfato",
    "Dor ou pressão no peito",
  ];
}

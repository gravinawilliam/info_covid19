const String getLastDataCountrySubscription = ''' 
subscription {
   countries_cases(where: {name: {_eq: "Estados Unidos"}}, order_by: {created_at: desc}, limit: 1) {
    name
    id_country
    death_cases
    recovered_cases
    updated_at
    id
    created_at
    confirmed_cases
    active_cases 
  }
}
''';
const String getPopulationCountrySubscription = ''' 
subscription {
  countries_population(where: {name: {_eq: "Estados Unidos"}}, order_by: {created_at: desc}, limit: 1) {
    id_country
    name
    population
  }
}
''';

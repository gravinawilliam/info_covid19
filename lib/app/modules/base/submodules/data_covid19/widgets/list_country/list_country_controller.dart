import 'package:info_covid19/app/core/constants/constants.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../repositories/interfaces/data_covid19_repository_interface.dart';

import 'list_country_status.dart';

part 'list_country_controller.g.dart';

@Injectable()
class ListCountryController = _ListCountryControllerBase
    with _$ListCountryController;

abstract class _ListCountryControllerBase with Store {
  final IDataCovid19Repository repository;
  // ignore: type_init_formals
  _ListCountryControllerBase(IDataCovid19Repository this.repository) {
    getAllCountries();
  }

  @observable
  ListCountryStatus status = ListCountryStatus.none;

  @action
  Future<void> getAllCountries() async {
    status = ListCountryStatus.loading;
    try {
      final response = await repository.getAllCountries();
      status = ListCountryStatus.success..value = response;
      // ignore: avoid_catches_without_on_clauses
    } catch (e) {
      status = ListCountryStatus.error..value = e;
    }
  }

  @action
  String translatesName(String name) {
    switch (name) {
      case "Afghanistan":
        name = LocaleProvider.current.afghanistan;
        break;
      case "Albania":
        name = LocaleProvider.current.albania;
        break;
      case "Algeria":
        name = LocaleProvider.current.algeria;
        break;
      case "Andorra":
        name = LocaleProvider.current.andorra;
        break;
      case "Angola":
        name = LocaleProvider.current.angola;
        break;
      case "Anguilla":
        name = LocaleProvider.current.anguilla;
        break;
      case "Antigua and Barbuda":
        name = LocaleProvider.current.antiguaAndBarbuda;
        break;
      case "Argentina":
        name = LocaleProvider.current.argentina;
        break;
      case "Armenia":
        name = LocaleProvider.current.armenia;
        break;
      case "Aruba":
        name = LocaleProvider.current.aruba;
        break;
      case "Australia":
        name = LocaleProvider.current.australia;
        break;
      case "Austria":
        name = LocaleProvider.current.austria;
        break;
      case "Azerbaijan":
        name = LocaleProvider.current.azerbaijan;
        break;
      case "Bahamas":
        name = LocaleProvider.current.bahamas;
        break;
      case "Bahrain":
        name = LocaleProvider.current.bahrain;
        break;
      case "Bangladesh":
        name = LocaleProvider.current.bangladesh;
        break;
      case "Barbados":
        name = LocaleProvider.current.barbados;
        break;
      case "Belarus":
        name = LocaleProvider.current.belarus;
        break;
      case "Belgium":
        name = LocaleProvider.current.belgium;
        break;
      case "Belize":
        name = LocaleProvider.current.belize;
        break;
      case "Benin":
        name = LocaleProvider.current.benin;
        break;
      case "Bermuda":
        name = LocaleProvider.current.bermuda;
        break;
      case "Bhutan":
        name = LocaleProvider.current.bhutan;
        break;
      case "Bolivia":
        name = LocaleProvider.current.bolivia;
        break;
      case "Bosnia":
        name = LocaleProvider.current.bosnia;
        break;
      case "Botswana":
        name = LocaleProvider.current.botswana;
        break;
      case "Brazil":
        name = LocaleProvider.current.brazil;
        break;
      case "British Virgin Islands":
        name = LocaleProvider.current.britishVirginIslands;
        break;
      case "Brunei":
        name = LocaleProvider.current.brunei;
        break;
      case "Bulgaria":
        name = LocaleProvider.current.bulgaria;
        break;
      case "Burkina Faso":
        name = LocaleProvider.current.burkinaFaso;
        break;
      case "Burundi":
        name = LocaleProvider.current.burundi;
        break;
      case "Cabo Verde":
        name = LocaleProvider.current.caboVerde;
        break;
      case "Cambodia":
        name = LocaleProvider.current.cambodia;
        break;
      case "Cameroon":
        name = LocaleProvider.current.cameroon;
        break;
      case "Canada":
        name = LocaleProvider.current.canada;
        break;
      case "Caribbean Netherlands":
        name = LocaleProvider.current.caribbeanNetherlands;
        break;
      case "Cayman Islands":
        name = LocaleProvider.current.caymanIslands;
        break;
      case "Central African Republic":
        name = LocaleProvider.current.centralAfricanRepublic;
        break;
      case "Chad":
        name = LocaleProvider.current.chad;
        break;
      case "Channel Islands":
        name = LocaleProvider.current.channelIslands;
        break;
      case "Chile":
        name = LocaleProvider.current.chile;
        break;
      case "China":
        name = LocaleProvider.current.china;
        break;
      case "Colombia":
        name = LocaleProvider.current.colombia;
        break;
      case "Comoros":
        name = LocaleProvider.current.comoros;
        break;
      case "Congo":
        name = LocaleProvider.current.congo;
        break;
      case "Costa Rica":
        name = LocaleProvider.current.costaRica;
        break;
      case "Croatia":
        name = LocaleProvider.current.croatia;
        break;
      case "Cuba":
        name = LocaleProvider.current.cuba;
        break;
      case "Curaçao":
        name = LocaleProvider.current.curacao;
        break;
      case "Cyprus":
        name = LocaleProvider.current.cyprus;
        break;
      case "Czechia":
        name = LocaleProvider.current.czechia;
        break;
      case "Côte d'Ivoire":
        name = LocaleProvider.current.coteDIvoire;
        break;
      case "DRC":
        name = LocaleProvider.current.drc;
        break;
      case "Denmark":
        name = LocaleProvider.current.denmark;
        break;
      case "Diamond Princess":
        name = LocaleProvider.current.diamondPrincess;
        break;
      case "Djibouti":
        name = LocaleProvider.current.djibouti;
        break;
      case "Dominica":
        name = LocaleProvider.current.dominica;
        break;
      case "Dominican Republic":
        name = LocaleProvider.current.dominicanRepublic;
        break;
      case "Ecuador":
        name = LocaleProvider.current.ecuador;
        break;
      case "Egypt":
        name = LocaleProvider.current.egypt;
        break;
      case "El Salvador":
        name = LocaleProvider.current.elSalvador;
        break;
      case "Equatorial Guinea":
        name = LocaleProvider.current.equatorialGuinea;
        break;
      case "Eritrea":
        name = LocaleProvider.current.eritrea;
        break;
      case "Estonia":
        name = LocaleProvider.current.estonia;
        break;
      case "Ethiopia":
        name = LocaleProvider.current.ethiopia;
        break;
      case "Falkland Islands (Malvinas)":
        name = LocaleProvider.current.falklandIslands;
        break;
      case "Faroe Islands":
        name = LocaleProvider.current.faroeIslands;
        break;
      case "Fiji":
        name = LocaleProvider.current.fiji;
        break;
      case "Finland":
        name = LocaleProvider.current.finland;
        break;
      case "France":
        name = LocaleProvider.current.france;
        break;
      case "French Guiana":
        name = LocaleProvider.current.frenchGuiana;
        break;
      case "French Polynesia":
        name = LocaleProvider.current.frenchPolynesia;
        break;
      case "Gabon":
        name = LocaleProvider.current.gabon;
        break;
      case "Gambia":
        name = LocaleProvider.current.gambia;
        break;
      case "Georgia":
        name = LocaleProvider.current.georgia;
        break;
      case "Germany":
        name = LocaleProvider.current.germany;
        break;
      case "Ghana":
        name = LocaleProvider.current.ghana;
        break;
      case "Gibraltar":
        name = LocaleProvider.current.gibraltar;
        break;
      case "Greece":
        name = LocaleProvider.current.greece;
        break;
      case "Greenland":
        name = LocaleProvider.current.greenland;
        break;
      case "Grenada":
        name = LocaleProvider.current.grenada;
        break;
      case "Guadeloupe":
        name = LocaleProvider.current.guadeloupe;
        break;
      case "Guatemala":
        name = LocaleProvider.current.guatemala;
        break;
      case "Guinea":
        name = LocaleProvider.current.guinea;
        break;
      case "Guinea-Bissau":
        name = LocaleProvider.current.guineaBissau;
        break;
      case "Guyana":
        name = LocaleProvider.current.guyana;
        break;
      case "Haiti":
        name = LocaleProvider.current.haiti;
        break;
      case "Holy See (Vatican City State)":
        name = LocaleProvider.current.holySee;
        break;
      case "Honduras":
        name = LocaleProvider.current.honduras;
        break;
      case "Hong Kong":
        name = LocaleProvider.current.hongKong;
        break;
      case "Hungary":
        name = LocaleProvider.current.hungary;
        break;
      case "Iceland":
        name = LocaleProvider.current.iceland;
        break;
      case "India":
        name = LocaleProvider.current.india;
        break;
      case "Indonesia":
        name = LocaleProvider.current.indonesia;
        break;
      case "Iran":
        name = LocaleProvider.current.iran;
        break;
      case "Iraq":
        name = LocaleProvider.current.iraq;
        break;
      case "Ireland":
        name = LocaleProvider.current.ireland;
        break;
      case "Isle of Man":
        name = LocaleProvider.current.isleOfMan;
        break;
      case "Israel":
        name = LocaleProvider.current.israel;
        break;
      case "Italy":
        name = LocaleProvider.current.italy;
        break;
      case "Jamaica":
        name = LocaleProvider.current.jamaica;
        break;
      case "Japan":
        name = LocaleProvider.current.japan;
        break;
      case "Jordan":
        name = LocaleProvider.current.jordan;
        break;
      case "Kazakhstan":
        name = LocaleProvider.current.kazakhstan;
        break;
      case "Kenya":
        name = LocaleProvider.current.kenya;
        break;
      case "Kuwait":
        name = LocaleProvider.current.kuwait;
        break;
      case "Kyrgyzstan":
        name = LocaleProvider.current.kyrgyzstan;
        break;
      case "Lao People's Democratic Republic":
        name = LocaleProvider.current.laoPeople;
        break;
      case "Latvia":
        name = LocaleProvider.current.latvia;
        break;
      case "Lebanon":
        name = LocaleProvider.current.lebanon;
        break;
      case "Lesotho":
        name = LocaleProvider.current.lesotho;
        break;
      case "Liberia":
        name = LocaleProvider.current.liberia;
        break;
      case "Libyan Arab Jamahiriya":
        name = LocaleProvider.current.libyanArabJamahiriya;
        break;
      case "Liechtenstein":
        name = LocaleProvider.current.liechtenstein;
        break;
      case "Lithuania":
        name = LocaleProvider.current.lithuania;
        break;
      case "Luxembourg":
        name = LocaleProvider.current.luxembourg;
        break;
      case "MS Zaandam":
        name = LocaleProvider.current.msZaandam;
        break;
      case "Macao":
        name = LocaleProvider.current.macao;
        break;
      case "Macedonia":
        name = LocaleProvider.current.macedonia;
        break;
      case "Madagascar":
        name = LocaleProvider.current.madagascar;
        break;
      case "Malawi":
        name = LocaleProvider.current.malawi;
        break;
      case "Malaysia":
        name = LocaleProvider.current.malaysia;
        break;
      case "Maldives":
        name = LocaleProvider.current.maldives;
        break;
      case "Mali":
        name = LocaleProvider.current.mali;
        break;
      case "Malta":
        name = LocaleProvider.current.malta;
        break;
      case "Marshall Islands":
        name = LocaleProvider.current.marshallIslands;
        break;
      case "Martinique":
        name = LocaleProvider.current.martinique;
        break;
      case "Mauritania":
        name = LocaleProvider.current.mauritania;
        break;
      case "Mauritius":
        name = LocaleProvider.current.mauritius;
        break;
      case "Mayotte":
        name = LocaleProvider.current.mayotte;
        break;
      case "Mexico":
        name = LocaleProvider.current.mexico;
        break;
      case "Moldova":
        name = LocaleProvider.current.moldova;
        break;
      case "Monaco":
        name = LocaleProvider.current.monaco;
        break;
      case "Mongolia":
        name = LocaleProvider.current.mongolia;
        break;
      case "Montenegro":
        name = LocaleProvider.current.montenegro;
        break;
      case "Montserrat":
        name = LocaleProvider.current.montserrat;
        break;
      case "Morocco":
        name = LocaleProvider.current.morocco;
        break;
      case "Mozambique":
        name = LocaleProvider.current.mozambique;
        break;
      case "Myanmar":
        name = LocaleProvider.current.myanmar;
        break;
      case "Namibia":
        name = LocaleProvider.current.namibia;
        break;
      case "Nepal":
        name = LocaleProvider.current.nepal;
        break;
      case "Netherlands":
        name = LocaleProvider.current.netherlands;
        break;
      case "New Caledonia":
        name = LocaleProvider.current.newCaledonia;
        break;
      case "New Zealand":
        name = LocaleProvider.current.newZealand;
        break;
      case "Nicaragua":
        name = LocaleProvider.current.nicaragua;
        break;
      case "Niger":
        name = LocaleProvider.current.niger;
        break;
      case "Nigeria":
        name = LocaleProvider.current.nigeria;
        break;
      case "Norway":
        name = LocaleProvider.current.norway;
        break;
      case "Oman":
        name = LocaleProvider.current.oman;
        break;
      case "Pakistan":
        name = LocaleProvider.current.pakistan;
        break;
      case "Palestine":
        name = LocaleProvider.current.palestine;
        break;
      case "Panama":
        name = LocaleProvider.current.panama;
        break;
      case "Papua New Guinea":
        name = LocaleProvider.current.papuaNewGuinea;
        break;
      case "Paraguay":
        name = LocaleProvider.current.paraguay;
        break;
      case "Peru":
        name = LocaleProvider.current.peru;
        break;
      case "Philippines":
        name = LocaleProvider.current.philippines;
        break;
      case "Poland":
        name = LocaleProvider.current.poland;
        break;
      case "Portugal":
        name = LocaleProvider.current.portugal;
        break;
      case "Qatar":
        name = LocaleProvider.current.qatar;
        break;
      case "Romania":
        name = LocaleProvider.current.romania;
        break;
      case "Russia":
        name = LocaleProvider.current.russia;
        break;
      case "Rwanda":
        name = LocaleProvider.current.rwanda;
        break;
      case "Réunion":
        name = LocaleProvider.current.reunion;
        break;
      case "S. Korea":
        name = LocaleProvider.current.southKorea;
        break;
      case "Saint Kitts and Nevis":
        name = LocaleProvider.current.saintKittsandNevis;
        break;
      case "Saint Lucia":
        name = LocaleProvider.current.saintLucia;
        break;
      case "Saint Martin":
        name = LocaleProvider.current.saintMartin;
        break;
      case "Saint Pierre Miquelon":
        name = LocaleProvider.current.saintPierreMiquelon;
        break;
      case "Saint Vincent and the Grenadines":
        name = LocaleProvider.current.saintVincentandtheGrenadines;
        break;
      case "Samoa":
        name = LocaleProvider.current.samoa;
        break;
      case "San Marino":
        name = LocaleProvider.current.sanMarino;
        break;
      case "Sao Tome and Principe":
        name = LocaleProvider.current.saoTomeandPrincipe;
        break;
      case "Saudi Arabia":
        name = LocaleProvider.current.saudiArabia;
        break;
      case "Senegal":
        name = LocaleProvider.current.senegal;
        break;
      case "Serbia":
        name = LocaleProvider.current.serbia;
        break;
      case "Seychelles":
        name = LocaleProvider.current.seychelles;
        break;
      case "Sierra Leone":
        name = LocaleProvider.current.sierraLeone;
        break;
      case "Singapore":
        name = LocaleProvider.current.singapore;
        break;
      case "Sint Maarten":
        name = LocaleProvider.current.saintMartin;
        break;
      case "Slovakia":
        name = LocaleProvider.current.slovakia;
        break;
      case "Slovenia":
        name = LocaleProvider.current.slovenia;
        break;
      case "Solomon Islands":
        name = LocaleProvider.current.solomonIslands;
        break;
      case "Somalia":
        name = LocaleProvider.current.somalia;
        break;
      case "South Africa":
        name = LocaleProvider.current.southAfrica;
        break;
      case "South Sudan":
        name = LocaleProvider.current.southSudan;
        break;
      case "Spain":
        name = LocaleProvider.current.spain;
        break;
      case "Sri Lanka":
        name = LocaleProvider.current.sriLanka;
        break;
      case "St. Barth":
        name = LocaleProvider.current.stBarth;
        break;
      case "Sudan":
        name = LocaleProvider.current.sudan;
        break;
      case "Suriname":
        name = LocaleProvider.current.suriname;
        break;
      case "Swaziland":
        name = LocaleProvider.current.swaziland;
        break;
      case "Sweden":
        name = LocaleProvider.current.sweden;
        break;
      case "Switzerland":
        name = LocaleProvider.current.switzerland;
        break;
      case "Syrian Arab Republic":
        name = LocaleProvider.current.syrianArabRepublic;
        break;
      case "Taiwan":
        name = LocaleProvider.current.taiwan;
        break;
      case "Tajikistan":
        name = LocaleProvider.current.tajikistan;
        break;
      case "Tanzania":
        name = LocaleProvider.current.tanzania;
        break;
      case "Thailand":
        name = LocaleProvider.current.thailand;
        break;
      case "Timor-Leste":
        name = LocaleProvider.current.timorLeste;
        break;
      case "Togo":
        name = LocaleProvider.current.togo;
        break;
      case "Trinidad and Tobago":
        name = LocaleProvider.current.trinidadandTobago;
        break;
      case "Tunisia":
        name = LocaleProvider.current.tunisia;
        break;
      case "Turkey":
        name = LocaleProvider.current.turkey;
        break;
      case "Turks and Caicos Islands":
        name = LocaleProvider.current.turksandCaicosIslands;
        break;
      case "UAE":
        name = LocaleProvider.current.unitedArabesEmirates;
        break;
      case "UK":
        name = LocaleProvider.current.unitedKingdom;
        break;
      case "USA":
        name = LocaleProvider.current.unitedStates;
        break;
      case "Uganda":
        name = LocaleProvider.current.uganda;
        break;
      case "Ukraine":
        name = LocaleProvider.current.ukraine;
        break;
      case "Uruguay":
        name = LocaleProvider.current.uruguay;
        break;
      case "Uzbekistan":
        name = LocaleProvider.current.uzbekistan;
        break;
      case "Vanuatu":
        name = LocaleProvider.current.vanuatu;
        break;
      case "Venezuela":
        name = LocaleProvider.current.venezuela;
        break;
      case "Vietnam":
        name = LocaleProvider.current.vietnam;
        break;
      case "Wallis and Futuna":
        name = LocaleProvider.current.wallisandFutuna;
        break;
      case "Western Sahara":
        name = LocaleProvider.current.westernSahara;
        break;
      case "Yemen":
        name = LocaleProvider.current.yemen;
        break;
      case "Zambia":
        name = LocaleProvider.current.zambia;
        break;
      case "Zimbabwe":
        name = LocaleProvider.current.zimbabwe;
        break;
      default:
    }
    return name;
  }
}

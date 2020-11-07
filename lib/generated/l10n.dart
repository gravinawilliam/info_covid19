// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class LocaleProvider {
  LocaleProvider();
  
  static LocaleProvider current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<LocaleProvider> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      LocaleProvider.current = LocaleProvider();
      
      return LocaleProvider.current;
    });
  } 

  static LocaleProvider of(BuildContext context) {
    return Localizations.of<LocaleProvider>(context, LocaleProvider);
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `COVID-19 Data`
  String get covid19_data {
    return Intl.message(
      'COVID-19 Data',
      name: 'covid19_data',
      desc: '',
      args: [],
    );
  }

  /// `Dark Mode`
  String get dark_mode {
    return Intl.message(
      'Dark Mode',
      name: 'dark_mode',
      desc: '',
      args: [],
    );
  }

  /// `% based on the number of cases.`
  String get graph_title {
    return Intl.message(
      '% based on the number of cases.',
      name: 'graph_title',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get active {
    return Intl.message(
      'Active',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `Recovered`
  String get recovered {
    return Intl.message(
      'Recovered',
      name: 'recovered',
      desc: '',
      args: [],
    );
  }

  /// `Deaths`
  String get deaths {
    return Intl.message(
      'Deaths',
      name: 'deaths',
      desc: '',
      args: [],
    );
  }

  /// `Cases`
  String get cases {
    return Intl.message(
      'Cases',
      name: 'cases',
      desc: '',
      args: [],
    );
  }

  /// `News`
  String get news {
    return Intl.message(
      'News',
      name: 'news',
      desc: '',
      args: [],
    );
  }

  /// `See graph`
  String get see_graph {
    return Intl.message(
      'See graph',
      name: 'see_graph',
      desc: '',
      args: [],
    );
  }

  /// `See data`
  String get see_data {
    return Intl.message(
      'See data',
      name: 'see_data',
      desc: '',
      args: [],
    );
  }

  /// `Loading`
  String get loading {
    return Intl.message(
      'Loading',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Empty list`
  String get empty_list {
    return Intl.message(
      'Empty list',
      name: 'empty_list',
      desc: '',
      args: [],
    );
  }

  /// `Countries`
  String get countries {
    return Intl.message(
      'Countries',
      name: 'countries',
      desc: '',
      args: [],
    );
  }

  /// `Population`
  String get population {
    return Intl.message(
      'Population',
      name: 'population',
      desc: '',
      args: [],
    );
  }

  /// `Continnets`
  String get continnets {
    return Intl.message(
      'Continnets',
      name: 'continnets',
      desc: '',
      args: [],
    );
  }

  /// `North America`
  String get north_america {
    return Intl.message(
      'North America',
      name: 'north_america',
      desc: '',
      args: [],
    );
  }

  /// `Asia`
  String get asia {
    return Intl.message(
      'Asia',
      name: 'asia',
      desc: '',
      args: [],
    );
  }

  /// `South America`
  String get south_america {
    return Intl.message(
      'South America',
      name: 'south_america',
      desc: '',
      args: [],
    );
  }

  /// `Europe`
  String get europe {
    return Intl.message(
      'Europe',
      name: 'europe',
      desc: '',
      args: [],
    );
  }

  /// `Africa`
  String get africa {
    return Intl.message(
      'Africa',
      name: 'africa',
      desc: '',
      args: [],
    );
  }

  /// `Australia / Oceania`
  String get australia_oceania {
    return Intl.message(
      'Australia / Oceania',
      name: 'australia_oceania',
      desc: '',
      args: [],
    );
  }

  /// `Brazil`
  String get brazil {
    return Intl.message(
      'Brazil',
      name: 'brazil',
      desc: '',
      args: [],
    );
  }

  /// `Graphics`
  String get graphics {
    return Intl.message(
      'Graphics',
      name: 'graphics',
      desc: '',
      args: [],
    );
  }

  /// `Information`
  String get information {
    return Intl.message(
      'Information',
      name: 'information',
      desc: '',
      args: [],
    );
  }

  /// `Data`
  String get data {
    return Intl.message(
      'Data',
      name: 'data',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<LocaleProvider> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'pt', countryCode: 'BR'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<LocaleProvider> load(Locale locale) => LocaleProvider.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}
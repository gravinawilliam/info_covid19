import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'core/constants/constants.dart';

part 'app_controller.g.dart';

@Injectable()
class AppController = _AppControllerBase with _$AppController;

abstract class _AppControllerBase with Store {
  _AppControllerBase() {
    loadTheme();
  }

  @observable
  ThemeData themeType;

  @computed
  bool get isDark => themeType.brightness == Brightness.dark;

  @action
  void changeTheme() {
    if (isDark) {
      themeType = ThemeData(
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
        ),
        brightness: Brightness.light,
        primaryColor: LightColorsConst.primary,
        scaffoldBackgroundColor: LightColorsConst.backgroundScaffold,
        accentColor: LightColorsConst.accent,
        unselectedWidgetColor: LightColorsConst.textNoSelected,
        textSelectionColor: LightColorsConst.textSelected,
        textTheme: TextTheme(
          //! title
          headline1: TextStyle(
            color: TextColorsConst.title,
            fontFamily: FontsConst.title,
            fontSize: 26,
          ),
          //! subtitle
          subtitle1: TextStyle(
            color: LightColorsConst.textSubtitle,
            fontFamily: FontsConst.text,
            fontSize: 23,
          ),
          //! text selecionado
          bodyText1: TextStyle(
            color: LightColorsConst.textSelected,
            fontFamily: FontsConst.text,
            fontSize: 17,
          ),
          //! text nao selecionado
          bodyText2: TextStyle(
            color: LightColorsConst.textNoSelected,
            fontFamily: FontsConst.text,
            fontSize: 17,
          ),
          //! botao
          button: TextStyle(
            color: TextColorsConst.title,
            fontFamily: FontsConst.text,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          //! text
          headline2: TextStyle(
            color: TextColorsConst.title,
            fontFamily: FontsConst.text,
            fontSize: 17,
          ),
          //! numeros
          headline3: TextStyle(
            color: TextColorsConst.title,
            fontFamily: FontsConst.text,
            fontSize: 17,
          ),
        ),
      );
    } else {
      themeType = ThemeData(
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
        ),
        brightness: Brightness.dark,
        primaryColor: DarkColorsConst.primary,
        scaffoldBackgroundColor: DarkColorsConst.backgroundScaffold,
        accentColor: DarkColorsConst.accent,
        unselectedWidgetColor: DarkColorsConst.textNoSelected,
        textSelectionColor: DarkColorsConst.textSelected,
        textTheme: TextTheme(
          //! title
          headline1: TextStyle(
            color: TextColorsConst.title,
            fontFamily: FontsConst.title,
            fontSize: 26,
          ),
          //! subtitle
          subtitle1: TextStyle(
            color: DarkColorsConst.textSubtitle,
            fontFamily: FontsConst.text,
            fontSize: 23,
          ),
          //! text selecionado
          bodyText1: TextStyle(
            color: DarkColorsConst.textSelected,
            fontFamily: FontsConst.text,
            fontSize: 17,
          ),
          //! text nao selecionado
          bodyText2: TextStyle(
            color: DarkColorsConst.textNoSelected,
            fontFamily: FontsConst.text,
            fontSize: 17,
          ),
          //! botao
          button: TextStyle(
            color: TextColorsConst.title,
            fontFamily: FontsConst.text,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          //! text
          headline2: TextStyle(
            color: TextColorsConst.title,
            fontFamily: FontsConst.text,
            fontSize: 17,
          ),
          //! numeros
          headline3: TextStyle(
            color: TextColorsConst.title,
            fontFamily: FontsConst.text,
            fontSize: 17,
          ),
        ),
      );
    }
    saveThemePreferences();
  }

  void saveThemePreferences() {
    SharedPreferences.getInstance().then((instance) {
      instance.setBool('isDark', isDark);
    });
  }

  Future<void> loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('isDark') && prefs.getBool('isDark')) {
      themeType = ThemeData(
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
        ),
        brightness: Brightness.dark,
        primaryColor: DarkColorsConst.primary,
        scaffoldBackgroundColor: DarkColorsConst.backgroundScaffold,
        accentColor: DarkColorsConst.accent,
        unselectedWidgetColor: DarkColorsConst.textNoSelected,
        textSelectionColor: DarkColorsConst.textSelected,
        textTheme: TextTheme(
          //! title
          headline1: TextStyle(
            color: TextColorsConst.title,
            fontFamily: FontsConst.title,
            fontSize: 26,
          ),
          //! subtitle
          subtitle1: TextStyle(
            color: DarkColorsConst.textSubtitle,
            fontFamily: FontsConst.text,
            fontSize: 23,
          ),
          //! text selecionado
          bodyText1: TextStyle(
            color: DarkColorsConst.textSelected,
            fontFamily: FontsConst.text,
            fontSize: 17,
          ),
          //! text nao selecionado
          bodyText2: TextStyle(
            color: DarkColorsConst.textNoSelected,
            fontFamily: FontsConst.text,
            fontSize: 17,
          ),
          //! botao
          button: TextStyle(
            color: TextColorsConst.title,
            fontFamily: FontsConst.text,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          //! text
          headline2: TextStyle(
            color: TextColorsConst.title,
            fontFamily: FontsConst.text,
            fontSize: 17,
          ),
          //! numeros
          headline3: TextStyle(
            color: TextColorsConst.title,
            fontFamily: FontsConst.text,
            fontSize: 17,
          ),
        ),
      );
    } else {
      themeType = ThemeData(
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
        ),
        brightness: Brightness.light,
        primaryColor: LightColorsConst.primary,
        scaffoldBackgroundColor: LightColorsConst.backgroundScaffold,
        accentColor: LightColorsConst.accent,
        unselectedWidgetColor: LightColorsConst.textNoSelected,
        textSelectionColor: LightColorsConst.textSelected,
        textTheme: TextTheme(
          //! title
          headline1: TextStyle(
            color: TextColorsConst.title,
            fontFamily: FontsConst.title,
            fontSize: 26,
          ),
          //! subtitle
          subtitle1: TextStyle(
            color: LightColorsConst.textSubtitle,
            fontFamily: FontsConst.text,
            fontSize: 23,
          ),
          //! text selecionado
          bodyText1: TextStyle(
            color: LightColorsConst.textSelected,
            fontFamily: FontsConst.text,
            fontSize: 17,
          ),
          //! text nao selecionado
          bodyText2: TextStyle(
            color: LightColorsConst.textNoSelected,
            fontFamily: FontsConst.text,
            fontSize: 17,
          ),
          //! botao
          button: TextStyle(
            color: TextColorsConst.title,
            fontFamily: FontsConst.text,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          //! text
          headline2: TextStyle(
            color: TextColorsConst.title,
            fontFamily: FontsConst.text,
            fontSize: 17,
          ),
          //! numeros
          headline3: TextStyle(
            color: TextColorsConst.title,
            fontFamily: FontsConst.text,
            fontSize: 17,
          ),
        ),
      );
    }
  }
}

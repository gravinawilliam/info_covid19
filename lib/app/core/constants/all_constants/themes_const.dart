import 'package:flutter/material.dart';

import '../constants.dart';

// ignore: avoid_classes_with_only_static_members
class ThemesConst {
  static ThemeData light = ThemeData(
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
        fontSize: 18,
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
  static ThemeData dark = ThemeData(
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
        fontSize: 18,
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

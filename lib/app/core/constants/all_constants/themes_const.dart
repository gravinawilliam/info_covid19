import 'package:flutter/material.dart';

import '../constants.dart';

class ThemesConst {
  static ThemeData dark = ThemeData(
    appBarTheme: AppBarTheme(
      brightness: Brightness.dark,
    ),
    brightness: Brightness.dark,
    primaryColor: DarkColorsConst.primary,
    scaffoldBackgroundColor: DarkColorsConst.backgroundScaffold,
    accentColor: DarkColorsConst.accent,
    textTheme: TextTheme(
      //! title
      headline1: TextStyle(
        color: DarkColorsConst.textTitle,
        fontFamily: FontsConst.title,
        fontSize: 40,
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
        color: DarkColorsConst.textTitle,
        fontFamily: FontsConst.text,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      //! text
      headline2: TextStyle(
        color: DarkColorsConst.textTitle,
        fontFamily: FontsConst.text,
        fontSize: 17,
      ),
      //! numeros
      headline3: TextStyle(
        color: DarkColorsConst.textTitle,
        fontFamily: FontsConst.text,
        fontSize: 17,
      ),
    ),
  );
}

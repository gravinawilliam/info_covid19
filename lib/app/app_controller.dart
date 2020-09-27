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
        brightness: Brightness.light,
        accentColor: LightColorsConst.accent,
        accentColorBrightness: Brightness.light,
        primaryColor: LightColorsConst.primary,
        scaffoldBackgroundColor: LightColorsConst.backgroundScaffold,
        backgroundColor: LightColorsConst.backgroundColor,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: LightColorsConst.backgroundBottomBar,
          selectedItemColor: LightColorsConst.selected,
          unselectedItemColor: LightColorsConst.notSelected,
          selectedIconTheme: IconThemeData(
            color: LightColorsConst.selected,
            size: 32,
          ),
          elevation: 4,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            color: LightColorsConst.text,
            fontFamily: FontsConst.title,
            fontSize: 23,
          ),
          headline3: TextStyle(
            color: LightColorsConst.text,
            fontFamily: FontsConst.text,
            fontSize: 17,
          ),
        ),
      );
    } else {
      themeType = ThemeData(
        brightness: Brightness.dark,
        accentColor: DarkColorsConst.accent,
        accentColorBrightness: Brightness.light,
        primaryColor: DarkColorsConst.primary,
        scaffoldBackgroundColor: DarkColorsConst.backgroundScaffold,
        backgroundColor: DarkColorsConst.backgroundColor,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: DarkColorsConst.backgroundBottomBar,
          selectedItemColor: DarkColorsConst.selected,
          unselectedItemColor: DarkColorsConst.notSelected,
          selectedIconTheme: IconThemeData(
            color: DarkColorsConst.selected,
            size: 32,
          ),
          elevation: 4,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            color: DarkColorsConst.text,
            fontFamily: FontsConst.title,
            fontSize: 23,
          ),
          headline3: TextStyle(
            color: DarkColorsConst.text,
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
        brightness: Brightness.dark,
        accentColor: DarkColorsConst.accent,
        accentColorBrightness: Brightness.light,
        primaryColor: DarkColorsConst.primary,
        scaffoldBackgroundColor: DarkColorsConst.backgroundScaffold,
        backgroundColor: DarkColorsConst.backgroundColor,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: DarkColorsConst.backgroundBottomBar,
          selectedItemColor: DarkColorsConst.selected,
          unselectedItemColor: DarkColorsConst.notSelected,
          selectedIconTheme: IconThemeData(
            color: DarkColorsConst.selected,
            size: 32,
          ),
          elevation: 4,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            color: DarkColorsConst.text,
            fontFamily: FontsConst.title,
            fontSize: 23,
          ),
          headline3: TextStyle(
            color: DarkColorsConst.text,
            fontFamily: FontsConst.text,
            fontSize: 17,
          ),
        ),
      );
    } else {
      themeType = ThemeData(
        brightness: Brightness.light,
        accentColor: LightColorsConst.accent,
        accentColorBrightness: Brightness.light,
        primaryColor: LightColorsConst.primary,
        scaffoldBackgroundColor: LightColorsConst.backgroundScaffold,
        backgroundColor: LightColorsConst.backgroundColor,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: LightColorsConst.backgroundBottomBar,
          selectedItemColor: LightColorsConst.selected,
          unselectedItemColor: LightColorsConst.notSelected,
          selectedIconTheme: IconThemeData(
            color: LightColorsConst.selected,
            size: 32,
          ),
          elevation: 4,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            color: LightColorsConst.text,
            fontFamily: FontsConst.text,
            fontSize: 30,
          ),
          headline3: TextStyle(
            color: LightColorsConst.text,
            fontFamily: FontsConst.text,
            fontSize: 17,
          ),
        ),
      );
    }
  }
}

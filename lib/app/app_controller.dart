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
        appBarTheme: AppBarTheme(
          color: LightColorsConst.backgroundBottomBar,
        ),
        scaffoldBackgroundColor: LightColorsConst.backgroundScaffold,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: LightColorsConst.backgroundBottomBar,
          selectedItemColor: LightColorsConst.selected,
          unselectedItemColor: LightColorsConst.notSelected,
        ),
        textTheme: TextTheme(
          headline2: TextStyle(
            color: LightColorsConst.text,
          ),
        ),
        primaryColor: LightColorsConst.primary,
      );
    } else {
      themeType = ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          color: DarkColorsConst.backgroundBottomBar,
        ),
        scaffoldBackgroundColor: DarkColorsConst.backgroundScaffold,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: DarkColorsConst.backgroundBottomBar,
          selectedItemColor: DarkColorsConst.selected,
          unselectedItemColor: DarkColorsConst.notSelected,
        ),
        textTheme: TextTheme(
          headline2: TextStyle(
            color: DarkColorsConst.text,
          ),
        ),
        primaryColor: DarkColorsConst.primary,
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
        appBarTheme: AppBarTheme(
          color: DarkColorsConst.backgroundBottomBar,
        ),
        scaffoldBackgroundColor: DarkColorsConst.backgroundScaffold,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: DarkColorsConst.backgroundBottomBar,
          selectedItemColor: DarkColorsConst.selected,
          unselectedItemColor: DarkColorsConst.notSelected,
        ),
        textTheme: TextTheme(
          headline2: TextStyle(
            color: DarkColorsConst.text,
          ),
        ),
        primaryColor: DarkColorsConst.primary,
      );
    } else {
      themeType = ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          color: LightColorsConst.backgroundBottomBar,
        ),
        scaffoldBackgroundColor: LightColorsConst.backgroundScaffold,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: LightColorsConst.backgroundBottomBar,
          selectedItemColor: LightColorsConst.selected,
          unselectedItemColor: LightColorsConst.notSelected,
        ),
        textTheme: TextTheme(
          headline2: TextStyle(
            color: LightColorsConst.text,
          ),
        ),
        primaryColor: LightColorsConst.primary,
      );
    }
  }
}

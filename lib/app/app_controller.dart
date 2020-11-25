import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:info_covid19/app/core/constants/all_constants/themes_const.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      themeType = ThemesConst.light;
    } else {
      themeType = ThemesConst.dark;
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
      themeType = ThemesConst.dark;
    } else {
      themeType = ThemesConst.light;
    }
  }
}

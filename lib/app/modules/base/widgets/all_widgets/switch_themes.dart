import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../../core/constants/constants.dart';
import '../../base_controller.dart';

class SwitchThemes extends StatelessWidget {
  final BaseController controller;

  const SwitchThemes({this.controller});
  @override
  Widget build(BuildContext context) => Observer(
        builder: (_) => Container(
          margin: EdgeInsets.only(right: 20),
          child: Row(
            children: [
              Icon(
                Ionicons.md_sunny,
                color: controller.appController.isDark
                    ? Theme.of(context)
                        .bottomNavigationBarTheme
                        .unselectedItemColor
                    : IconsColorsConst.sun,
              ),
              Switch(
                onChanged: (value) {
                  controller.appController.changeTheme();
                },
                value: controller.appController.isDark,
                activeColor: IconsColorsConst.moon,
                inactiveThumbColor: IconsColorsConst.sun,
              ),
              Icon(
                Ionicons.ios_moon,
                color: controller.appController.isDark
                    ? IconsColorsConst.moon
                    : Theme.of(context)
                        .bottomNavigationBarTheme
                        .unselectedItemColor,
              ),
            ],
          ),
        ),
      );
}

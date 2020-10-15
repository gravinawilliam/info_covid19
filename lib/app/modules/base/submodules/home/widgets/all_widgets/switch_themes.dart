import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../../../../core/constants/constants.dart';
import '../../home_controller.dart';

class SwitchThemes extends StatelessWidget {
  final HomeController controller;

  const SwitchThemes({this.controller});
  @override
  Widget build(BuildContext context) => Observer(
        builder: (_) => Container(
          margin: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                LocaleProvider.of(context).dark_mode,
                style: Theme.of(context).textTheme.subtitle1,
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
                controller.appController.isDark
                    ? Ionicons.ios_moon
                    : Ionicons.md_sunny,
                color: controller.appController.isDark
                    ? IconsColorsConst.moon
                    : IconsColorsConst.sun,
              ),
            ],
          ),
        ),
      );
}

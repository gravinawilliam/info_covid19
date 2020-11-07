import 'package:fancy_bottom_bar/fancy_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../core/constants/constants.dart';
import '../../base_controller.dart';

class BottomBar extends StatelessWidget {
  final BaseController controller;

  const BottomBar({this.controller});

  @override
  Widget build(BuildContext context) => Observer(
        builder: (context) => FancyBottomBar(
          selectedPosition: controller.selectedIndex,
          onItemSelected: (index) => controller.changePage(index),
          elevation: 4,
          indicatorColor: Colors.white,
          bgColor: Theme.of(context).primaryColor,
          selectedColor: Colors.white,
          items: <FancyBottomItem>[
            FancyBottomItem(
              title: Text(
                LocaleProvider.of(context).home,
                style: Theme.of(context).textTheme.button,
              ),
              icon: Icon(
                Ionicons.md_home,
                size: 32,
                color: Colors.white,
              ),
            ),
            FancyBottomItem(
              title: Text(
                LocaleProvider.of(context).data,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.button,
              ),
              icon: Icon(
                FontAwesomeIcons.solidListAlt,
                size: 32,
                color: Colors.white,
              ),
            ),
            FancyBottomItem(
              title: Text(
                LocaleProvider.of(context).information,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.button,
              ),
              icon: Icon(
                FontAwesomeIcons.info,
                size: 32,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
}

import 'package:cool_nav/cool_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../base_controller.dart';

class BottomBar extends StatelessWidget {
  final BaseController controller;

  const BottomBar({this.controller});

  @override
  Widget build(BuildContext context) => Observer(
        builder: (context) => FlipBoxNavigationBar(
          verticalPadding: 20.0,
          duration: Duration(seconds: 1),
          currentIndex: controller.selectedIndex,
          selectedItemTheme: IconThemeData(
            color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          ),
          textStyle: TextStyle(
            color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          ),
          unselectedItemTheme: IconThemeData(
            color: Theme.of(context).backgroundColor,
          ),
          onTap: (index) => controller.changePage(index),
          backgroundColor:
              Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          items: <FlipBoxNavigationBarItem>[
            FlipBoxNavigationBarItem(
              name: "Home",
              selectedIcon: Ionicons.md_home,
              selectedBackgroundColor: Theme.of(context).backgroundColor,
              unselectedBackgroundColor:
                  Theme.of(context).bottomNavigationBarTheme.backgroundColor,
            ),
            FlipBoxNavigationBarItem(
              name: "Dados\nCovid-19",
              selectedIcon: FontAwesomeIcons.solidListAlt,
              unselectedIcon: FontAwesomeIcons.listAlt,
              selectedBackgroundColor: Theme.of(context).backgroundColor,
              unselectedBackgroundColor:
                  Theme.of(context).bottomNavigationBarTheme.backgroundColor,
            ),
            FlipBoxNavigationBarItem(
              name: "Notícias",
              selectedIcon: FontAwesomeIcons.solidNewspaper, //
              unselectedIcon: FontAwesomeIcons.newspaper,
              selectedBackgroundColor: Theme.of(context).backgroundColor,
              unselectedBackgroundColor:
                  Theme.of(context).bottomNavigationBarTheme.backgroundColor,
            ),
          ],
        ),
      );
}

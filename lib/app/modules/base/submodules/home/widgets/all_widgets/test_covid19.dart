import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:info_covid19/app/core/constants/constants.dart';

import '../widgets.dart';

class TestCovid19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    var alturaWidget = SizeConst.screenHeight * 0.22;
    var larguraWidget =
        SizeConst.screenWidth - (2 * SizeConst.paddingHorizontal);
    var paddingWidget = 13.0;
    return Stack(
      children: [
        Container(
          color: Theme.of(context).primaryColor,
          height: SizeConst.screenHeight * 0.12,
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(15),
          ),
          height: alturaWidget,
          margin: EdgeInsets.only(
            top: SizeConst.screenHeight * 0.01,
            left: SizeConst.paddingHorizontal,
            right: SizeConst.paddingHorizontal,
          ),
          padding: EdgeInsets.all(paddingWidget),
          width: larguraWidget,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: (larguraWidget - (2 * paddingWidget)) * 0.2,
                child: SvgPicture.asset(
                  ImagesConst.doctorWoman,
                ),
              ),
              Container(
                width: ((larguraWidget - (2 * paddingWidget)) * 0.8) - 10,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      height: ((alturaWidget - (2 * paddingWidget))) * 0.4,
                      child: Text(
                        "Como você está se sentindo?",
                        style: Theme.of(context).textTheme.subtitle1,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: ((alturaWidget - (2 * paddingWidget))) * 0.6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ButtonStateTest(
                            alturaWidget: alturaWidget,
                            larguraWidget: larguraWidget,
                            paddingWidget: paddingWidget,
                            color: ButtonColorsConst.good,
                            text: "Bem",
                            icon: Ionicons.ios_happy,
                            onTap: () {},
                          ),
                          ButtonStateTest(
                            alturaWidget: alturaWidget,
                            larguraWidget: larguraWidget,
                            paddingWidget: paddingWidget,
                            color: ButtonColorsConst.bad,
                            text: "Mal",
                            icon: Ionicons.ios_sad,
                            onTap: () => Modular.to.pushNamed(
                              RoutersConst.testCovid19,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

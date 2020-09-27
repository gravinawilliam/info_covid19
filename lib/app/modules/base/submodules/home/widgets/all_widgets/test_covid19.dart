import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../../core/constants/constants.dart';

import '../widgets.dart';

class TestCovid19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        SizeConst.paddingHorizontal,
        SizeConst.paddingVertical * 0.7,
        SizeConst.paddingHorizontal,
        0,
      ),
      padding: EdgeInsets.all(SizeConst.paddingHorizontal * 0.7),
      height: SizeConst.screenHeight * 0.2,
      width: SizeConst.screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Theme.of(context).primaryColor,
          width: 3,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: (SizeConst.screenWidth - (4 * SizeConst.paddingHorizontal)) *
                0.2,
            child: SvgPicture.asset(
              "lib/app/core/assets/images/medico.svg",
              fit: BoxFit.contain,
            ),
          ),
          Container(
            width: (SizeConst.screenWidth - (4 * SizeConst.paddingHorizontal)) *
                0.75,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Como você está se sentindo?",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline3.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ButtonStateTestCovid19(
                      color: IconsColorsConst.good,
                      icons: Ionicons.ios_happy,
                      onTap: () {},
                    ),
                    ButtonStateTestCovid19(
                      color: IconsColorsConst.bad,
                      icons: Ionicons.ios_sad,
                      onTap: () => Modular.to.pushNamed(
                        RoutersConst.testCovid19,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

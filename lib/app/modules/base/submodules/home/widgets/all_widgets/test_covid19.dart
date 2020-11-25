import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../core/constants/constants.dart';
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
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 25.0,
                spreadRadius: 2,
                offset: Offset(
                  9,
                  9,
                ),
              )
            ],
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
                        LocaleProvider.of(context).whatAreYouFeeling,
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
                            text: LocaleProvider.of(context).good,
                            icon: Ionicons.ios_happy,
                            onTap: () => showAnimatedDialog(
                              context: context,
                              barrierDismissible: true,
                              builder: (context) {
                                return CustomDialogWidget(
                                  actions: [
                                    FlatButton(
                                      onPressed: () {
                                        Modular.to.pop();
                                      },
                                      child: Text(
                                        LocaleProvider.of(context)
                                            .confirm
                                            .toUpperCase(),
                                        style:
                                            Theme.of(context).textTheme.button,
                                      ),
                                    ),
                                  ],
                                  backgroundColor:
                                      Theme.of(context).primaryColor,
                                  content: Text(
                                    LocaleProvider.of(context).messageGood,
                                    textAlign: TextAlign.center,
                                    style:
                                        Theme.of(context).textTheme.headline3,
                                  ),
                                );
                              },
                              animationType: DialogTransitionType.sizeFade,
                              curve: Curves.fastOutSlowIn,
                              duration: Duration(milliseconds: 300),
                            ),
                          ),
                          ButtonStateTest(
                            alturaWidget: alturaWidget,
                            larguraWidget: larguraWidget,
                            paddingWidget: paddingWidget,
                            color: ButtonColorsConst.bad,
                            text: LocaleProvider.of(context).bad,
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

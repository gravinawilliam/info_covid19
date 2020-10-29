import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../../core/constants/constants.dart';

class CardContinent extends StatelessWidget {
  final int confirmados;
  final int quantidade;
  final int index;
  final String name;
  final Function onTap;

  const CardContinent({
    this.confirmados,
    this.index,
    this.quantidade,
    this.onTap,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    var casesString = LocaleProvider.of(context).cases;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(
          right: SizeConst.paddingVertical * 0.5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(11),
          color: Theme.of(context).primaryColor,
        ),
        margin: EdgeInsets.only(
          left: SizeConst.paddingHorizontal,
          top: SizeConst.paddingVertical,
          right: SizeConst.paddingHorizontal,
          bottom: index + 1 == quantidade ? SizeConst.screenHeight * 0.3 : 0,
        ),
        height: SizeConst.screenHeight * 0.12,
        child: Container(
          padding: EdgeInsets.only(
            left: 10,
            top: 10,
            bottom: 5,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: (SizeConst.screenWidth -
                        (3 * SizeConst.paddingHorizontal)) *
                    .62,
                child: Text(
                  name,
                  textAlign: TextAlign.start,
                  style: Theme.of(context).textTheme.button.copyWith(
                        fontSize: 18,
                      ),
                  maxLines: 1,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5),
                width: (SizeConst.screenWidth -
                        (3 * SizeConst.paddingHorizontal)) *
                    .62,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SvgPicture.asset(ImagesConst.paciente),
                    Text(
                      "$confirmados $casesString".toUpperCase(),
                      textAlign: TextAlign.left,
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(fontSize: 18),
                      maxLines: 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

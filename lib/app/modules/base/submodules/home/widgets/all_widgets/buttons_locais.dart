import 'package:flutter/material.dart';
import '../../../../../../core/constants/constants.dart';
import 'button_local.dart';

class ButtonsLocais extends StatelessWidget {
  final String country;

  const ButtonsLocais({
    this.country,
  });

  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Container(
      margin: EdgeInsets.only(
        top: SizeConst.paddingVertical * 0.7,
        bottom: SizeConst.paddingVertical * 0.5,
      ),
      alignment: Alignment.center,
      width: SizeConst.screenWidth,
      height: 40,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: [
          ButtonLocal(
            title: country,
          ),
        ],
      ),
    );
  }
}

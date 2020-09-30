import 'package:flutter/material.dart';
import 'package:info_covid19/app/core/constants/constants.dart';

import 'button_local.dart';

class ButtonsLocais extends StatelessWidget {
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
            title: "Paises",
            isUltimo: false,
            isSelected: true,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

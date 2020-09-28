import 'package:flutter/material.dart';
import 'package:info_covid19/app/core/constants/constants.dart';

class CardDataCovid19 extends StatelessWidget {
  final Color color;
  final int index;
  final String quantidade;
  final String title;

  const CardDataCovid19({
    this.color,
    this.index,
    this.title,
    this.quantidade,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          (SizeConst.screenWidth - (2 * SizeConst.paddingHorizontal)) * 0.21,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            topRight: index == 0 ? Radius.circular(15) : Radius.circular(0),
            bottomRight: index == 3 ? Radius.circular(15) : Radius.circular(0),
          )),
      padding: EdgeInsets.all(7),
      margin: EdgeInsets.only(
        bottom: SizeConst.paddingVertical * 0.6,
        left: SizeConst.paddingVertical * 0.6,
      ),
      width: (SizeConst.screenWidth - (2 * SizeConst.paddingHorizontal)) * 0.8,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          Text(
            quantidade,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

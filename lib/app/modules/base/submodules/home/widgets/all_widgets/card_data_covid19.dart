import 'package:flutter/material.dart';
import 'package:info_covid19/app/core/constants/constants.dart';

class CardDataCovid19 extends StatelessWidget {
  final Color color;
  final double width;
  final String quantidade;
  final String title;

  const CardDataCovid19({
    this.color,
    this.width,
    this.title,
    this.quantidade,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(7),
      margin: EdgeInsets.only(top: SizeConst.paddingVertical * 0.5),
      width:
          (SizeConst.screenWidth - (2 * SizeConst.paddingHorizontal)) * width,
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          Text(
            quantidade,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:info_covid19/app/core/constants/constants.dart';

class CardDataCovid19 extends StatelessWidget {
  final Color color;
  final String title;
  final int number;

  const CardDataCovid19({
    this.color,
    this.title,
    this.number,
  });

  @override
  Widget build(BuildContext context) {
    var padding = 12.0;
    var alturaWidget = 100.0;
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(7),
      ),
      height: alturaWidget,
      padding: EdgeInsets.all(padding),
      width: (SizeConst.screenWidth - (3 * SizeConst.paddingHorizontal)) * 0.5,
      child: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            height: (alturaWidget - (2 * padding)) * 0.5,
            child: Text(
              number.toString(),
              style: Theme.of(context).textTheme.headline3.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Container(
            alignment: Alignment.bottomLeft,
            height: (alturaWidget - (2 * padding)) * 0.5,
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline2.copyWith(
                    fontSize: 20,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

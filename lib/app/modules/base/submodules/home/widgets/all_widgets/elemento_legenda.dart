import 'package:flutter/material.dart';
import '../../../../../../core/constants/constants.dart';

class ElementoLegenda extends StatelessWidget {
  final Color color;
  final String title;

  const ElementoLegenda({Key key, this.color, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var tamanhoCirculosLegenda = 13.0;
    return Container(
      alignment: Alignment.center,
      width: (SizeConst.screenWidth - (2 * SizeConst.paddingHorizontal)) * 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: tamanhoCirculosLegenda,
            width: tamanhoCirculosLegenda,
            color: color,
            margin: EdgeInsets.only(right: 2),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}

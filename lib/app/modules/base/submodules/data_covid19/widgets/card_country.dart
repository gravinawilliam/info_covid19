import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:info_covid19/app/core/constants/constants.dart';

class CardCountry extends StatelessWidget {
  final int populacao;
  final int confirmados;
  final String name;
  final String bandeiraUrl;

  const CardCountry({
    this.populacao,
    this.confirmados,
    this.name,
    this.bandeiraUrl,
  });

  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: SizeConst.paddingVertical * 0.5,
        horizontal: SizeConst.paddingHorizontal * 0.5,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        color: Colors.blue,
      ),
      margin: EdgeInsets.only(
        bottom: SizeConst.paddingVertical * .7,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: (SizeConst.screenWidth - (3 * SizeConst.paddingHorizontal)) *
                .27,
            height:
                (SizeConst.screenWidth - (3 * SizeConst.paddingHorizontal)) *
                    .22,
            child: CachedNetworkImage(
              imageUrl: bandeiraUrl,
              fit: BoxFit.contain,
            ),
          ),
          Container(
            width: (SizeConst.screenWidth - (3 * SizeConst.paddingHorizontal)) *
                .73,
            padding: EdgeInsets.only(
              left: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  width: (SizeConst.screenWidth -
                          (3 * SizeConst.paddingHorizontal)) *
                      .73,
                  child: Text(
                    name,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    maxLines: 2,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  width: (SizeConst.screenWidth -
                          (3 * SizeConst.paddingHorizontal)) *
                      .73,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Ionicons.ios_person),
                      Text(
                        populacao.toString(),
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: (SizeConst.screenWidth -
                          (3 * SizeConst.paddingHorizontal)) *
                      .73,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Confirmados: ",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        maxLines: 2,
                      ),
                      Text(
                        confirmados.toString(),
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                        maxLines: 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

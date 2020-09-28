import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:info_covid19/app/core/constants/constants.dart';

class ButtonLocalGraph extends StatelessWidget {
  final String name;
  final String bandeiraUrl;
  final Function onTap;
  final Color color;
  final double opacity;
  final int index;

  const ButtonLocalGraph({
    this.name,
    this.index,
    this.opacity,
    this.color,
    this.bandeiraUrl,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Opacity(
        opacity: opacity,
        child: Container(
          height: (SizeConst.screenWidth - (2 * SizeConst.paddingHorizontal)) *
              0.21,
          margin: EdgeInsets.only(bottom: SizeConst.paddingVertical * 0.6),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.only(
              topLeft: index == 0 ? Radius.circular(15) : Radius.circular(0),
              bottomLeft: index == 3 ? Radius.circular(15) : Radius.circular(0),
            ),
          ),
          width:
              (SizeConst.screenWidth - (2 * SizeConst.paddingHorizontal)) * 0.2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: (SizeConst.screenWidth -
                        (2 * SizeConst.paddingHorizontal)) *
                    0.2,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft:
                        index == 0 ? Radius.circular(15) : Radius.circular(0),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: bandeiraUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: (SizeConst.screenWidth -
                        (2 * SizeConst.paddingHorizontal)) *
                    0.2,
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

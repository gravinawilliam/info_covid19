import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:info_covid19/app/core/constants/constants.dart';

class ButtonLocalGraph extends StatelessWidget {
  final String name;
  final String bandeiraUrl;
  final Function onTap;
  final Color color;
  final double opacity;

  const ButtonLocalGraph({
    this.name,
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
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(5),
              bottomRight: Radius.circular(5),
            ),
          ),
          width: (SizeConst.screenWidth - (2 * SizeConst.paddingHorizontal)) *
              0.25,
          child: Column(
            children: [
              Container(
                width: (SizeConst.screenWidth -
                        (2 * SizeConst.paddingHorizontal)) *
                    0.25,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: bandeiraUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5),
                  ),
                ),
                width: (SizeConst.screenWidth -
                        (2 * SizeConst.paddingHorizontal)) *
                    0.25,
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

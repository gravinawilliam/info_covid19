import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/constants/constants.dart';

class HeaderCountry extends StatelessWidget {
  final String imageUrl;
  final String name;

  const HeaderCountry({Key key, this.imageUrl, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(SizeConst.screenWidth * 0.2),
        ),
      ),
      height: (SizeConst.screenHeight * 0.17) + SizeConst.paddingVertical,
      padding: EdgeInsets.only(
        bottom: SizeConst.paddingVertical,
      ),
      width: SizeConst.screenWidth,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          horizontal: SizeConst.paddingHorizontal,
        ),
        height: SizeConst.screenHeight * 0.17,
        child: Container(
          width:
              (SizeConst.screenWidth - 3 * SizeConst.paddingHorizontal) * 0.7,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(13),
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

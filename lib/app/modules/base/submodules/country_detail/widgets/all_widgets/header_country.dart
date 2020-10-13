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
          bottomRight: Radius.circular(SizeConst.screenWidth * 0.4),
        ),
      ),
      height: (SizeConst.screenHeight * 0.1) + SizeConst.paddingVertical,
      padding: EdgeInsets.only(
        bottom: SizeConst.paddingVertical,
      ),
      width: SizeConst.screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(
              horizontal: SizeConst.paddingHorizontal,
            ),
            height: SizeConst.screenHeight * 0.1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: (SizeConst.screenWidth -
                          3 * SizeConst.paddingHorizontal) *
                      0.4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(13),
                    child: CachedNetworkImage(
                      imageUrl: imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: (SizeConst.screenWidth -
                          3 * SizeConst.paddingHorizontal) *
                      0.6,
                  margin: EdgeInsets.symmetric(
                    horizontal: SizeConst.paddingHorizontal * 0.5,
                  ),
                  child: Text(
                    name,
                    style: Theme.of(context).textTheme.headline1,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

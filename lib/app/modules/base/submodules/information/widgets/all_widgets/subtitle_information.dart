import 'package:flutter/material.dart';
import 'package:info_covid19/app/core/constants/constants.dart';

class SubtitleInformation extends StatelessWidget {
  final String subtitle;

  const SubtitleInformation({this.subtitle});

  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Container(
      width: SizeConst.screenWidth,
      margin: EdgeInsets.symmetric(
        horizontal: SizeConst.paddingHorizontal,
      ),
      child: Text(
        subtitle,
        style: Theme.of(context).textTheme.headline1,
      ),
    );
  }
}

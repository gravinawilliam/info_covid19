import 'package:flutter/material.dart';
import 'package:info_covid19/app/core/constants/constants.dart';

import '../widgets.dart';

class LocaleGraph extends StatelessWidget {
  final String bandeiraUrl;
  final String name;

  const LocaleGraph({
    this.bandeiraUrl,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: (SizeConst.screenWidth - (2 * SizeConst.paddingHorizontal)) * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonLocalGraph(
            bandeiraUrl: bandeiraUrl,
            name: name,
            onTap: () {},
            opacity: 1,
            index: 0,
          ),
          ButtonLocalGraph(
            bandeiraUrl: bandeiraUrl,
            name: name,
            onTap: () {},
            opacity: 0.4,
            index: 1,
          ),
          ButtonLocalGraph(
            bandeiraUrl: bandeiraUrl,
            name: name,
            onTap: () {},
            opacity: 0.4,
            index: 2,
          ),
          ButtonLocalGraph(
            bandeiraUrl: bandeiraUrl,
            name: name,
            onTap: () {},
            opacity: 0.4,
            index: 3,
          ),
        ],
      ),
    );
  }
}

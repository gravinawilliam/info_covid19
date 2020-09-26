import 'package:flutter/material.dart';

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonLocalGraph(
          bandeiraUrl: bandeiraUrl,
          name: name,
          color: Colors.blueGrey,
          onTap: () {},
          opacity: 1,
        ),
      ],
    );
  }
}

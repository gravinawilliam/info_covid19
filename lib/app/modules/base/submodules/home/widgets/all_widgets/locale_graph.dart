import 'package:flutter/material.dart';

import '../widgets.dart';

class LocaleGraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonLocalGraph(
          bandeiraUrl: "https://disease.sh/assets/img/flags/br.png",
          name: "Brazil",
          color: Colors.blueGrey,
          onTap: () {},
          opacity: 1,
        ),
      ],
    );
  }
}

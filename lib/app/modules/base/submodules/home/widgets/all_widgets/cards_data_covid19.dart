import 'package:flutter/material.dart';
import 'package:info_covid19/app/modules/base/submodules/home/widgets/widgets.dart';
import '../../../../../../core/constants/constants.dart';

class CardsDataCovid19 extends StatelessWidget {
  const CardsDataCovid19({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConst.screenWidth - (2 * SizeConst.paddingHorizontal),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        children: [
          CardDataCovid19(
            color: Colors.green[900],
            width: 0.475,
            title: "Ativos",
            quantidade: "200",
          ),
          CardDataCovid19(
            color: Colors.deepPurple,
            width: 0.475,
            title: "Ativos",
            quantidade: "200",
          ),
          CardDataCovid19(
            color: Colors.pinkAccent,
            width: 0.3,
            title: "Ativos",
            quantidade: "200",
          ),
          CardDataCovid19(
            color: Colors.blueAccent,
            width: 0.3,
            title: "Ativos",
            quantidade: "200",
          ),
          CardDataCovid19(
            color: Colors.redAccent,
            width: 0.3,
            title: "Ativos",
            quantidade: "200",
          ),
        ],
      ),
    );
  }
}

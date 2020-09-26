import 'package:flutter/material.dart';
import '../../../../../../core/constants/constants.dart';

class ButtonStateTestCovid19 extends StatelessWidget {
  final IconData icons;
  final Color color;
  final Function onTap;

  const ButtonStateTestCovid19({
    this.icons,
    this.color,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: color,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 50,
        width: ((SizeConst.screenWidth - (4 * SizeConst.paddingHorizontal)) *
                0.75) *
            0.4,
        child: Icon(
          icons,
          color: color,
          size: 32,
        ),
      ),
    );
  }
}

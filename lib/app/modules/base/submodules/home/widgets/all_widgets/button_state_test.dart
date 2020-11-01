import 'package:flutter/material.dart';
import 'package:info_covid19/app/core/constants/all_constants/size_const.dart';

class ButtonStateTest extends StatelessWidget {
  final double larguraWidget;
  final double paddingWidget;
  final double alturaWidget;
  final Color color;
  final String text;
  final IconData icon;
  final Function onTap;

  const ButtonStateTest({
    this.larguraWidget,
    this.paddingWidget,
    this.alturaWidget,
    this.color,
    this.text,
    this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: (((larguraWidget - (2 * paddingWidget)) * 0.8) - 10) * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: color,
        ),
        height: (((alturaWidget - (2 * paddingWidget))) * 0.65) * 0.4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.center,
              width:
                  ((((larguraWidget - (2 * paddingWidget)) * 0.8) - 10) * 0.4) *
                      0.35,
              child: Icon(
                icon,
                size: SizeConst.screenHeight * 0.037,
                color: Colors.white,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width:
                  ((((larguraWidget - (2 * paddingWidget)) * 0.8) - 10) * 0.4) *
                      0.55,
              child: Text(
                text.toUpperCase(),
                style: Theme.of(context).textTheme.button,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

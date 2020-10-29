import 'package:flutter/material.dart';
import '../../constants/constants.dart';

class ButtonVerGrafico extends StatelessWidget {
  final Function onPressed;
  final String nameButton;

  const ButtonVerGrafico({
    this.onPressed,
    this.nameButton,
  });

  @override
  Widget build(BuildContext context) {
    SizeConst().init(context);
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: SizeConst.paddingHorizontal,
        vertical: SizeConst.paddingVertical * 0.7,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      height: 50,
      child: FlatButton(
        onPressed: onPressed,
        child: Text(
          nameButton,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}

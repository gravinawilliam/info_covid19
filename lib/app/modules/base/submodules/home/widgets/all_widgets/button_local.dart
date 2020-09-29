import 'package:flutter/material.dart';
import '../../../../../../core/constants/constants.dart';

class ButtonLocal extends StatelessWidget {
  final String title;

  const ButtonLocal({
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          //   left: SizeConst.paddingHorizontal,
          ),
      padding: EdgeInsets.symmetric(
        horizontal: SizeConst.paddingHorizontal * 0.5,
      ),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 5,
          ),
        ),
      ),
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1.copyWith(
              fontSize: 25,
            ),
      ),
    );
  }
}

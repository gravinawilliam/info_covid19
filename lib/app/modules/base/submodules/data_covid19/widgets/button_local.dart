import 'package:flutter/material.dart';
import 'package:info_covid19/app/core/constants/constants.dart';

class ButtonLocal extends StatelessWidget {
  final String title;
  final bool isUltimo;
  final bool isSelected;
  final Function onTap;

  const ButtonLocal({
    this.title,
    this.isUltimo,
    this.isSelected,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
            // left: SizeConst.paddingHorizontal,
            // right: isUltimo ? SizeConst.paddingHorizontal : 0,
            ),
        padding: EdgeInsets.symmetric(
          horizontal: SizeConst.paddingHorizontal * 0.5,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: isSelected
                  ? Theme.of(context).primaryColor
                  : Colors.transparent,
              width: 5,
            ),
          ),
        ),
        child: Text(
          title.toUpperCase(),
          style: Theme.of(context).textTheme.bodyText1.copyWith(
                fontSize: 22,
              ),
        ),
      ),
    );
  }
}

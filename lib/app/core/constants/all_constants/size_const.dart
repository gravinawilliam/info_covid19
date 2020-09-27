import 'package:flutter/material.dart';

class SizeConst {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double paddingHorizontal;
  static double paddingVertical;
  static double statusBar;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    statusBar = _mediaQueryData.padding.top;
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height - statusBar;
    paddingHorizontal = screenWidth * 0.06;
    paddingVertical = screenHeight * 0.03;
  }
}

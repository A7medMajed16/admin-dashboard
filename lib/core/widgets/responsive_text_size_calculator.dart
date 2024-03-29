import 'package:flutter/cupertino.dart';

double getResponsiveFontSize(BuildContext context,
    {required double baseFontSize}) {
  double scaleFactor = getScaleFactor(context).clamp(0.8, 1.2);

  return baseFontSize * scaleFactor;
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 800) {
    return width / 600;
  } else if (width < 1200) {
    return width / 1000;
  } else {
    return width / 1300;
  }
}

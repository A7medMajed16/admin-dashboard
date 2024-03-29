import 'package:flutter/foundation.dart';

double getResponsiveFontSize({required double baseFontSize}) {
  double scaleFactor = getScaleFactor().clamp(0.8, 1.2);

  return (baseFontSize * scaleFactor);
}

double getScaleFactor() {
  PlatformDispatcher dispatcher = PlatformDispatcher.instance;
  double width = (dispatcher.views.first.physicalSize.width) /
      (dispatcher.views.first.devicePixelRatio);
  if (width < 700) {
    return width / 600;
  } else if (width < 1280) {
    return width / 1200;
  } else {
    return width / 1800;
  }
}

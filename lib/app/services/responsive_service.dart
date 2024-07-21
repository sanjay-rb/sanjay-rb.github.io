import 'package:flutter/material.dart';

class ResponsiveService {
  static const Size kTestMobileSize = Size(425, 666);
  static const Size kTestTabletSize = Size(768, 666);
  static const Size kTestDesktopSize = Size(1470.0, 833.0);

  static bool isMobile(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    if (screenSize.width <= kTestMobileSize.width) {
      return true;
    }
    return false;
  }

  static double width(BuildContext context, double value) {
    Size screenSize = MediaQuery.of(context).size;
    if (screenSize.width <= kTestMobileSize.width) {
      return screenSize.width * (value / kTestMobileSize.width);
    }
    if (screenSize.width <= kTestTabletSize.width) {
      return screenSize.width * (value / kTestTabletSize.width);
    }
    return screenSize.width * (value / kTestDesktopSize.width);
  }

  static double height(BuildContext context, double value) {
    Size screenSize = MediaQuery.of(context).size;
    if (screenSize.width <= kTestMobileSize.width) {
      return screenSize.height * (value / kTestMobileSize.height);
    }
    if (screenSize.width <= kTestTabletSize.width) {
      return screenSize.height * (value / kTestTabletSize.height);
    }
    return screenSize.height * (value / kTestDesktopSize.height);
  }

  static double widthRatio(BuildContext context, double value) {
    Size screenSize = MediaQuery.of(context).size;
    return screenSize.width * value;
  }

  static double heightRatio(BuildContext context, double value) {
    Size screenSize = MediaQuery.of(context).size;
    return screenSize.height * value;
  }
}

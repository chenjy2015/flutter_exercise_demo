import 'dart:ui';

import 'package:flutterapptest/constant.dart';

class ColorUtils {
  static Color hexToColor(String hexString, {String alphaChannel = 'FF'}) {
    return Color(int.parse(hexString.replaceFirst('#', '0x$alphaChannel')));
  }

  static Color getGeneralInputColor() {
    return hexToColor(Constant.INPUT_UNDER_LINE_COLOR);
  }
}

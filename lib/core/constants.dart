import 'package:flutter/material.dart';

class Constants {
  static const Map<int, Color> themeColor = {
    50: Color.fromRGBO(255, 66, 140, .1),
    100: Color.fromRGBO(255, 66, 140, .2),
    200: Color.fromRGBO(255, 66, 140, .3),
    300: Color.fromRGBO(255, 66, 140, .4),
    400: Color.fromRGBO(255, 66, 140, .5),
    500: Color.fromRGBO(255, 66, 140, .6),
    600: Color.fromRGBO(255, 66, 140, .7),
    700: Color.fromRGBO(255, 66, 140, .8),
    800: Color.fromRGBO(255, 66, 140, .9),
    900: Color.fromRGBO(255, 66, 140, 1),
  };

  static const MaterialColor themeSwatch =
      MaterialColor(0xFFfb438a, themeColor);
}

class AppColors {
  static Color get yellow => Color.fromRGBO(255, 237, 128, 1);
  static Color get pink => Color.fromRGBO(255, 66, 140, 1);
  static Color get purple => Color.fromRGBO(180, 193, 248, 1);
  static Color get blue => Color.fromRGBO(100, 190, 255, 1);
}

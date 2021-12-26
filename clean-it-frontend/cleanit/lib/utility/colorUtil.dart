import 'package:flutter/material.dart';

class AppColors {
  static const Color txtColor = Color(0xFF36454F);
  static const Color blue = Color(0xFF113CFC);
  static const Color primary = Color(0xFF0A0E21);
  static const Color snowWhite = Color(0xFFFdfcfa);

  static const Map<int, Color> colorCodesPurple = {
    50: Color.fromRGBO(114, 106, 236, 0.1),
    100: Color.fromRGBO(114, 106, 236, 0.2),
    200: Color.fromRGBO(114, 106, 236, 0.3),
    300: Color.fromRGBO(114, 106, 236, 0.4),
    400: Color.fromRGBO(114, 106, 236, 0.5),
    500: Color.fromRGBO(114, 106, 236, 0.6),
    600: Color.fromRGBO(114, 106, 236, 0.7),
    700: Color.fromRGBO(114, 106, 236, 0.8),
    800: Color.fromRGBO(114, 106, 236, 0.9),
    900: Color.fromRGBO(114, 106, 236, 1),
  };

  static const Map<int, Color> colorCodesBlue = {
    50: Color.fromRGBO(53, 127, 227, 0.1),
    100: Color.fromRGBO(53, 127, 227, 0.2),
    200: Color.fromRGBO(53, 127, 227, 0.3),
    300: Color.fromRGBO(53, 127, 227, 0.4),
    400: Color.fromRGBO(53, 127, 227, 0.5),
    500: Color.fromRGBO(53, 127, 227, 0.6),
    600: Color.fromRGBO(53, 127, 227, 0.7),
    700: Color.fromRGBO(53, 127, 227, 0.8),
    800: Color.fromRGBO(53, 127, 227, 0.9),
    900: Color.fromRGBO(53, 127, 227, 1),
  };

  static const Map<int, Color> colorCodesBlack = {
    50: Color.fromRGBO(10, 14, 33, .1),
    100: Color.fromRGBO(10, 14, 33, .2),
    200: Color.fromRGBO(10, 14, 33, .3),
    300: Color.fromRGBO(10, 14, 33, .4),
    400: Color.fromRGBO(10, 14, 33, .5),
    500: Color.fromRGBO(10, 14, 33, .6),
    600: Color.fromRGBO(10, 14, 33, .7),
    700: Color.fromRGBO(10, 14, 33, .8),
    800: Color.fromRGBO(10, 14, 33, .9),
    900: Color.fromRGBO(10, 14, 33, 1),
  };
  static const MaterialColor primaryPurple =
      MaterialColor(0xFF726aec, colorCodesPurple);
  static const MaterialColor primaryBlue =
      MaterialColor(0xFF357fe3, colorCodesBlue);

  //  primaryColor: Color(0xFF0A0E21),
  //       scaffoldBackgroundColor: Color(0xFF0A0E21)
}

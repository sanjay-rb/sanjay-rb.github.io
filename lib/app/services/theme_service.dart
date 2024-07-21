import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeService {
  // French Violet (#6A05C3)
  static Color violetDark = const Color.fromARGB(255, 89, 37, 109);

  // French Violet (#6A05C3)
  static Color violetLight = const Color.fromARGB(255, 164, 94, 191);

  // Snow (#FFFAFA)
  static Color white = const Color(0xffFFFAFA);

  // Midnight Blue (#101720)
  static Color black = const Color(0xff101720);

  // Bright Gray (#EEEEEE)
  static Color bgGreyLight = const Color(0xffEEEEEE);

  // Dark Charcoal (#333333)
  static Color bgGreyDark = const Color(0xff333333);

  static ThemeData getLightTheme(context) {
    ThemeData lightTheme = ThemeData(
      primarySwatch: getMaterialColor(violetDark),
      brightness: Brightness.light,
      primaryColor: violetDark,
      colorScheme: Theme.of(context).colorScheme.copyWith(
            brightness: Brightness.light,
            primary: white,
            secondary: violetDark,
            tertiary: black,
          ),
      scaffoldBackgroundColor: bgGreyLight,
      textTheme: GoogleFonts.fredokaTextTheme(
        Theme.of(context).textTheme,
      ),
      appBarTheme: AppBarTheme(titleTextStyle: TextStyle(color: black)),
    );
    return lightTheme;
  }

  static ThemeData getDarkTheme(context) {
    ThemeData darkTheme = ThemeData(
      primarySwatch: getMaterialColor(violetLight),
      brightness: Brightness.dark,
      primaryColor: violetLight,
      colorScheme: Theme.of(context).colorScheme.copyWith(
            brightness: Brightness.dark,
            primary: black,
            secondary: violetLight,
            tertiary: white,
          ),
      scaffoldBackgroundColor: bgGreyDark,
      textTheme: GoogleFonts.fredokaTextTheme(
        Theme.of(context).textTheme,
      ),
      appBarTheme: AppBarTheme(titleTextStyle: TextStyle(color: white)),
    );
    return darkTheme;
  }

  static MaterialColor getMaterialColor(Color color) {
    final int red = color.red;
    final int green = color.green;
    final int blue = color.blue;

    final Map<int, Color> shades = {
      50: Color.fromRGBO(red, green, blue, .1),
      100: Color.fromRGBO(red, green, blue, .2),
      200: Color.fromRGBO(red, green, blue, .3),
      300: Color.fromRGBO(red, green, blue, .4),
      400: Color.fromRGBO(red, green, blue, .5),
      500: Color.fromRGBO(red, green, blue, .6),
      600: Color.fromRGBO(red, green, blue, .7),
      700: Color.fromRGBO(red, green, blue, .8),
      800: Color.fromRGBO(red, green, blue, .9),
      900: Color.fromRGBO(red, green, blue, 1),
    };

    return MaterialColor(color.value, shades);
  }
}

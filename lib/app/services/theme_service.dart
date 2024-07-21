import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeService {
  // American Violet (#53118F)
  static Color violetDark = const Color(0xff53118F);

  // Dark Orchid (#933DC9)
  static Color violetLight = const Color(0xff933DC9);

  // Floral White (#FBFAEE)
  static Color white = const Color(0xffFBFAEE);

  // Raisin Black (#242424)
  static Color black = const Color(0xff242424);

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
      scaffoldBackgroundColor: white,
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
      scaffoldBackgroundColor: black,
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

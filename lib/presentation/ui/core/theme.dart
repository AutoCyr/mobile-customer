import 'package:flutter/material.dart';

class GlobalThemeData {

  static const Color _lightPrimaryColor = Color(0xff062e70);
  static const Color _darkPrimaryColor = Color(0xffb1c5ff);

  static ThemeData lightThemeData = themeData(lightColorScheme, _lightPrimaryColor);
  static ThemeData darkThemeData = themeData(darkColorScheme, _darkPrimaryColor);

  static ThemeData themeData(ColorScheme colorScheme, Color primaryColor) {
    return ThemeData(
        fontFamily: "Lufga",
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xff062e70),
    surfaceTint: Color(0xff485d92),
    onPrimary: Color(0xffffffff),
    primaryContainer: Color(0xff2b4174),
    onPrimaryContainer: Color(0xffffffff),
    secondary: Color(0xff1b2233),
    onSecondary: Color(0xffffffff),
    secondaryContainer: Color(0xff3c4255),
    onSecondaryContainer: Color(0xffffffff),
    tertiary: Color(0xff321933),
    onTertiary: Color(0xffffffff),
    tertiaryContainer: Color(0xff553955),
    onTertiaryContainer: Color(0xffffffff),
    error: Color(0xff4e0002),
    onError: Color(0xffffffff),
    errorContainer: Color(0xff8c0009),
    onErrorContainer: Color(0xffffffff),
    surface: Color(0xfffaf8ff),
    onSurface: Color(0xff000000),
    onSurfaceVariant: Color(0xff21242b),
    outline: Color(0xff40424b),
    outlineVariant: Color(0xff40424b),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xff2f3036),
    inversePrimary: Color(0xffe7ebff),
    primaryFixed: Color(0xff2b4174),
    onPrimaryFixed: Color(0xffffffff),
    primaryFixedDim: Color(0xff122a5c),
    onPrimaryFixedVariant: Color(0xffffffff),
    secondaryFixed: Color(0xff3c4255),
    onSecondaryFixed: Color(0xffffffff),
    secondaryFixedDim: Color(0xff262c3e),
    onSecondaryFixedVariant: Color(0xffffffff),
    tertiaryFixed: Color(0xff553955),
    onTertiaryFixed: Color(0xffffffff),
    tertiaryFixedDim: Color(0xff3d243e),
    onTertiaryFixedVariant: Color(0xffffffff),
    surfaceDim: Color(0xffdad9e0),
    surfaceBright: Color(0xfffaf8ff),
    surfaceContainerLowest: Color(0xffffffff),
    surfaceContainerLow: Color(0xfff4f3fa),
    surfaceContainer: Color(0xffeeedf4),
    surfaceContainerHigh: Color(0xffe8e7ef),
    surfaceContainerHighest: Color(0xffe2e2e9),
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xffb1c5ff),
    surfaceTint: Color(0xffb1c5ff),
    onPrimary: Color(0xff162e60),
    primaryContainer: Color(0xff2f4578),
    onPrimaryContainer: Color(0xffdae2ff),
    secondary: Color(0xffc0c6dc),
    onSecondary: Color(0xff2a3042),
    secondaryContainer: Color(0xff404659),
    onSecondaryContainer: Color(0xffdce2f9),
    tertiary: Color(0xffe0bbdd),
    onTertiary: Color(0xff412742),
    tertiaryContainer: Color(0xff593d59),
    onTertiaryContainer: Color(0xfffed7fa),
    error: Color(0xffffb4ab),
    onError: Color(0xff690005),
    errorContainer: Color(0xff93000a),
    onErrorContainer: Color(0xffffdad6),
    surface: Color(0xff121318),
    onSurface: Color(0xffe2e2e9),
    onSurfaceVariant: Color(0xffc5c6d0),
    outline: Color(0xff8f9099),
    outlineVariant: Color(0xff44464f),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xffe2e2e9),
    inversePrimary: Color(0xff485d92),
    primaryFixed: Color(0xffdae2ff),
    onPrimaryFixed: Color(0xff001946),
    primaryFixedDim: Color(0xffb1c5ff),
    onPrimaryFixedVariant: Color(0xff2f4578),
    secondaryFixed: Color(0xffdce2f9),
    onSecondaryFixed: Color(0xff151b2c),
    secondaryFixedDim: Color(0xffc0c6dc),
    onSecondaryFixedVariant: Color(0xff404659),
    tertiaryFixed: Color(0xfffed7fa),
    onTertiaryFixed: Color(0xff2a122c),
    tertiaryFixedDim: Color(0xffe0bbdd),
    onTertiaryFixedVariant: Color(0xff593d59),
    surfaceDim: Color(0xff121318),
    surfaceBright: Color(0xff38393f),
    surfaceContainerLowest: Color(0xff0d0e13),
    surfaceContainerLow: Color(0xff1a1b21),
    surfaceContainer: Color(0xff1e1f25),
    surfaceContainerHigh: Color(0xff282a2f),
    surfaceContainerHighest: Color(0xff33343a),
  );

}
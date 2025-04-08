import 'package:flutter/material.dart';

class GlobalThemeData {

  static const Color _lightPrimaryColor = Color(0xff28638a);
  static const Color _darkPrimaryColor = Color(0xff96ccf8);

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
    primary: Color(0xff28638a),
    surfaceTint: Color(0xff28638a),
    onPrimary: Color(0xffffffff),
    primaryContainer: Color(0xffcae6ff),
    onPrimaryContainer: Color(0xff004b70),
    secondary: Color(0xff50606f),
    onSecondary: Color(0xffffffff),
    secondaryContainer: Color(0xffd3e5f6),
    onSecondaryContainer: Color(0xff394956),
    tertiary: Color(0xff65587b),
    onTertiary: Color(0xffffffff),
    tertiaryContainer: Color(0xffebdcff),
    onTertiaryContainer: Color(0xff4d4162),
    error: Color(0xffba1a1a),
    onError: Color(0xffffffff),
    errorContainer: Color(0xffffdad6),
    onErrorContainer: Color(0xff93000a),
    surface: Color(0xfff7f9ff),
    onSurface: Color(0xff181c20),
    onSurfaceVariant: Color(0xff41474d),
    outline: Color(0xff72787e),
    outlineVariant: Color(0xffc1c7ce),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xff2d3135),
    inversePrimary: Color(0xff96ccf8),
    primaryFixed: Color(0xffcae6ff),
    onPrimaryFixed: Color(0xff001e30),
    primaryFixedDim: Color(0xff96ccf8),
    onPrimaryFixedVariant: Color(0xff004b70),
    secondaryFixed: Color(0xffd3e5f6),
    onSecondaryFixed: Color(0xff0c1d29),
    secondaryFixedDim: Color(0xffb8c8d9),
    onSecondaryFixedVariant: Color(0xff394956),
    tertiaryFixed: Color(0xffebdcff),
    onTertiaryFixed: Color(0xff211634),
    tertiaryFixedDim: Color(0xffd0c0e8),
    onTertiaryFixedVariant: Color(0xff4d4162),
    surfaceDim: Color(0xffd7dadf),
    surfaceBright: Color(0xfff7f9ff),
    surfaceContainerLowest: Color(0xffffffff),
    surfaceContainerLow: Color(0xfff1f4f9),
    surfaceContainer: Color(0xffebeef3),
    surfaceContainerHigh: Color(0xffe5e8ed),
    surfaceContainerHighest: Color(0xffe0e3e8),
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xff96ccf8),
    surfaceTint: Color(0xff96ccf8),
    onPrimary: Color(0xff00344f),
    primaryContainer: Color(0xff004b70),
    onPrimaryContainer: Color(0xffcae6ff),
    secondary: Color(0xffb8c8d9),
    onSecondary: Color(0xff22323f),
    secondaryContainer: Color(0xff394956),
    onSecondaryContainer: Color(0xffd3e5f6),
    tertiary: Color(0xffd0c0e8),
    onTertiary: Color(0xff362b4a),
    tertiaryContainer: Color(0xff4d4162),
    onTertiaryContainer: Color(0xffebdcff),
    error: Color(0xffffb4ab),
    onError: Color(0xff690005),
    errorContainer: Color(0xff93000a),
    onErrorContainer: Color(0xffffdad6),
    surface: Color(0xff101417),
    onSurface: Color(0xffe0e3e8),
    onSurfaceVariant: Color(0xffc1c7ce),
    outline: Color(0xff8b9198),
    outlineVariant: Color(0xff41474d),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xffe0e3e8),
    inversePrimary: Color(0xff28638a),
    primaryFixed: Color(0xffcae6ff),
    onPrimaryFixed: Color(0xff001e30),
    primaryFixedDim: Color(0xff96ccf8),
    onPrimaryFixedVariant: Color(0xff004b70),
    secondaryFixed: Color(0xffd3e5f6),
    onSecondaryFixed: Color(0xff0c1d29),
    secondaryFixedDim: Color(0xffb8c8d9),
    onSecondaryFixedVariant: Color(0xff394956),
    tertiaryFixed: Color(0xffebdcff),
    onTertiaryFixed: Color(0xff211634),
    tertiaryFixedDim: Color(0xffd0c0e8),
    onTertiaryFixedVariant: Color(0xff4d4162),
    surfaceDim: Color(0xff101417),
    surfaceBright: Color(0xff363a3e),
    surfaceContainerLowest: Color(0xff0b0f12),
    surfaceContainerLow: Color(0xff181c20),
    surfaceContainer: Color(0xff1c2024),
    surfaceContainerHigh: Color(0xff262a2e),
    surfaceContainerHighest: Color(0xff313539),
  );

}
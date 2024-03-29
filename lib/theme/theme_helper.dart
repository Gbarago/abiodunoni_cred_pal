import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.whiteA700,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.indigoA700,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray100,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodySmall: TextStyle(
          color: appTheme.indigoA700,
          fontSize: 12.fSize,
          fontFamily: 'Product Sans',
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: Colors.black,
          fontSize: 28.fSize,
          fontFamily: 'Avenir',
          fontWeight: FontWeight.w900,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: 12.fSize,
          fontFamily: 'Avenir',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: 10.fSize,
          fontFamily: 'Avenir',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: appTheme.blueGray800,
          fontSize: 16.fSize,
          fontFamily: 'Avenir',
          fontWeight: FontWeight.w900,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray900,
          fontSize: 14.fSize,
          fontFamily: 'Avenir',
          fontWeight: FontWeight.w800,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light();
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF050505);
  Color get black90001 => Color(0XFF000000);

  // Blue
  Color get blue100 => Color(0XFFD0DAFF);

  // BlueGray
  Color get blueGray200 => Color(0XFFB2B2CB);
  Color get blueGray300 => Color(0XFF9393B7);
  Color get blueGray800 => Color(0XFF32324C);
  Color get blueGray900 => Color(0XFF20294A);

  // DeepOrange
  Color get deepOrangeA700 => Color(0XFFF31B00);

  // Gray
  Color get gray100 => Color(0XFFF2F2FA);
  Color get gray10001 => Color(0XFFF1F3FE);
  Color get gray50A2 => Color(0XA2F4F5FE);
  Color get gray900 => Color(0XFF1A1A1A);
  Color get gray90001 => Color(0XFF121212);
  Color get gray90002 => Color(0XFF200E32);

  // Indigo
  Color get indigo700 => Color(0XFF3F4195);
  Color get indigo900 => Color(0XFF000065);
  Color get indigoA700 => Color(0XFF274FED);

  // LightBlue
  Color get lightBlue500 => Color(0XFF12AFED);
  Color get lightBlue800 => Color(0XFF0077C9);

  // Lime
  Color get lime800 => Color(0XFFC3811C);

  // Pink
  Color get pink500 => Color(0XFFFE2B5E);

  // Red
  Color get red600 => Color(0XFFED3237);
  Color get red900 => Color(0XFFA82037);

  // Teal
  Color get teal400 => Color(0XFF23C68B);

  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

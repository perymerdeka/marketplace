import 'package:flutter/material.dart';

Color kPrimaryColor = const Color(0xFFFF7643);
Color kPrimaryLightColor = const Color(0xFFFFECDF);
LinearGradient kPrimaryGradientColor = const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)]);
Color kSecondaryColor = const Color(0xFF979797);
Color kTextColor = const Color(0xFF757575);
Duration kAnimationDuration = const Duration(milliseconds: 200);

ThemeData baseTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: kTextColor),
      bodyMedium: TextStyle(color: kTextColor)
    )
  );
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketplace/themes/config.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      appBarTheme: appBarTheme(),
      scaffoldBackgroundColor: Colors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme: TextTheme(
          bodyLarge: TextStyle(color: kTextColor),
          bodyMedium: TextStyle(color: kTextColor)
        ),
        inputDecorationTheme: inputDecorationTheme()
      );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: const IconThemeData(color: Colors.black),
      titleTextStyle:
          GoogleFonts.poppins(color: const Color(0xFF8B8B8B), fontSize: 18));
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(color: kTextColor),
        gapPadding: 10,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: BorderSide(color: kTextColor),
        gapPadding: 10,
      ));
}


class CustomSuffix extends StatelessWidget {
  const CustomSuffix({
    super.key, required this.svgIcon,
  });

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, getProportionateScreenWidth(20),
          getProportionateScreenWidth(20), getProportionateScreenWidth(20)),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionateScreenHeight(18),
      ),
    );
  }
}

// Form Error
final RegExp emailValidatorRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
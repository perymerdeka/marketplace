import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketplace/themes/base.dart';
import 'package:marketplace/themes/config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key, required this.buttonText, required this.onPress,
  });

  final String buttonText;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        child: Text(
          buttonText,
          style: GoogleFonts.poppins(
              fontSize: getProportionateScreenWidth(18), color: Colors.white),
        ),
      ),
    );
  }
}

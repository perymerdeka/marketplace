import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketplace/themes/base.dart';
import 'package:marketplace/themes/config.dart';

class DefaultTextInputForm extends StatelessWidget {
  const DefaultTextInputForm(
      {super.key,
      required this.onChanged,
      this.obscureText = false,
      required this.onSaved,
      required this.keyboardType,
      this.labelText,
      this.hintText,
      required this.svgIcon, this.validator});

  final Function(String?)? onChanged;
  final bool obscureText;
  final Function(String?)? onSaved;
  final TextInputType keyboardType;
  final String? labelText;
  final String? hintText;
  final String svgIcon;
  final String? Function(String?)? validator;

  @override
  TextFormField build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      onChanged: onChanged,
      keyboardType: keyboardType,
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: labelText,
          hintText: hintText,
          suffixIcon: CustomSuffix(
            svgIcon: svgIcon,
          )),
      validator: validator,
    );
  }
}

class NoAccountField extends StatelessWidget {
  const NoAccountField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account ",
          style: GoogleFonts.poppins(
              fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () => Get.offNamed("/register"),
          child: Text(
            "Sign Up",
            style: GoogleFonts.poppins(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
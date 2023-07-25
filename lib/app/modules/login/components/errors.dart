import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketplace/themes/config.dart';

Row formErrorText(String error) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          height: getProportionateScreenWidth(14),
          width: getProportionateScreenWidth(14),
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(error, style: GoogleFonts.poppins(

        ),)
      ],
    );
  }

class FormsError extends StatelessWidget {
  const FormsError({
    super.key,
    required this.errors,
  });

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(errors[index])),
    );
  }
}


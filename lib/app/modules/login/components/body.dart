import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketplace/app/modules/login/components/forms.dart';
import 'package:marketplace/themes/config.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              Text(
                "Welcome back",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Sign In with Your Email and Password \nor Continue with Social Media",
                style: GoogleFonts.poppins(),
                textAlign: TextAlign.center,
              ),
              const FormsLogin()
            ],
          ),
        ),
      ),
    );
  }
}

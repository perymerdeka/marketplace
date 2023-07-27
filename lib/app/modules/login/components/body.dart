import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketplace/app/modules/login/components/forms.dart';
import 'package:marketplace/app/modules/login/components/social_card.dart';
import 'package:marketplace/themes/components/forms.dart';
import 'package:marketplace/themes/config.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
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
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                const FormsLogin(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                // container sosmed login
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      assetsName: 'assets/icons/google-icon.svg',
                      press: () {},
                    ),
                    SocialCard(
                      assetsName: 'assets/icons/facebook-2.svg',
                      press: () {},
                    ),
                    SocialCard(
                      assetsName: 'assets/icons/twitter.svg',
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenWidth(20),
                ),
                const NoAccountField()
              ],
            ),
          ),
        ),
      ),
    );
  }
}



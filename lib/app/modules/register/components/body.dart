import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketplace/app/modules/login/components/social_card.dart';
import 'package:marketplace/app/modules/register/components/forms.dart';
import 'package:marketplace/themes/base.dart';
import 'package:marketplace/themes/config.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.02,
              ),
              Text("Register Account", style: headingStyle),
              Text(
                "Complete Your Details or \n Complete with Social Media ",
                style: GoogleFonts.poppins(),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              const SignUpForms(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
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
                height: getProportionateScreenHeight(20),
              ),
              Text(
                "By Continuing your confirm that you agree \n with our Term and Condition",
                style: GoogleFonts.poppins(),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}

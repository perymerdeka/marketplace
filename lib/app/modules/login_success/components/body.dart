import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketplace/themes/components/button.dart';
import 'package:marketplace/themes/config.dart';

class LoginSuccessBody extends StatelessWidget {
  const LoginSuccessBody({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Login Success",
          style: GoogleFonts.poppins(
              fontSize: getProportionateScreenHeight(30),
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        const Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
              buttonText: "Back to Home",
              onPress: () {
                Get.offNamed("/home");
              }),
        ),
        const Spacer()
      ],
    );
  }
}

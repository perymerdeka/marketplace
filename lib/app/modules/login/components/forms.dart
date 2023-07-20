// form widget for login

import 'package:flutter/material.dart';
import 'package:marketplace/app/modules/splash/components/button.dart';
import 'package:marketplace/themes/base.dart';
import 'package:marketplace/themes/config.dart';

class FormsLogin extends StatefulWidget {
  const FormsLogin({super.key});

  @override
  State<FormsLogin> createState() => _FormsLoginState();
}

class _FormsLoginState extends State<FormsLogin> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: "Email",
                hintText: "Enter Your Email",
                suffixIcon: CustomSuffix(
                  svgIcon: "assets/icons/Mail.svg",
                )),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                labelText: "Password",
                hintText: "Enter your Password",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: CustomSuffix(
                  svgIcon: "assets/icons/Lock.svg",
                )),
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          DefaultButton(buttonText: 'Login', onPress: () {})
        ],
      ),
    );
  }
}

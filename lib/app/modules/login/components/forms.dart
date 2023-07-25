// form widget for login

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketplace/app/modules/login/components/errors.dart';
import 'package:marketplace/themes/base.dart';
import 'package:marketplace/themes/components/button.dart';
import 'package:marketplace/themes/config.dart';

class FormsLogin extends StatefulWidget {
  const FormsLogin({super.key});

  @override
  State<FormsLogin> createState() => _FormsLoginState();
}

class _FormsLoginState extends State<FormsLogin> {
  final _formsKey = GlobalKey<FormState>();
  final List<String> errors = [];

  // setup email and password
  late String email;
  late String password;

  // forgot password
  late bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formsKey,
      child: Column(
        children: [
          TextFormField(
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
            },
            onSaved: (newValue) => email = newValue!,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: "Email",
                hintText: "Enter Your Email",
                suffixIcon: CustomSuffix(
                  svgIcon: "assets/icons/Mail.svg",
                )),
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          TextFormField(
            obscureText: true,
            onSaved: (newValue) => password = newValue!,
            onChanged: (value) {
              if (value.isEmpty && !errors.contains(kPassNullError)) {
                setState(() {
                  errors.add(kPassNullError);
                });
              } else if (value.length < 8 && errors.contains(kShortPassError)) {
                setState(() {
                  errors.add(kShortPassError);
                });
              }
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kPassNullError)) {
                setState(() {
                  errors.add(kPassNullError);
                });
              } else if (value.length < 8 && errors.contains(kShortPassError)) {
                setState(() {
                  errors.add(kShortPassError);
                });
              }
              return null;
            },
            decoration: const InputDecoration(
                labelText: "Password",
                hintText: "Enter your Password",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: CustomSuffix(
                  svgIcon: "assets/icons/Lock.svg",
                )),
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          FormsError(errors: errors),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          Row(
            children: [
              Checkbox(
                  activeColor: kPrimaryColor,
                  value: remember,
                  onChanged: (value) {
                    setState(() {
                      remember = value!;
                    });
                  }),
              Text(
                "Remember me",
                style: GoogleFonts.poppins(),
              ),
              const Spacer(),
              Text(
                "Forgot Password",
                style:
                    GoogleFonts.poppins(decoration: TextDecoration.underline),
              )
            ],
          ),
          DefaultButton(
              buttonText: 'Login',
              onPress: () {
                if (_formsKey.currentState!.validate()) {
                  _formsKey.currentState?.save();
                }
              })
        ],
      ),
    );
  }
}

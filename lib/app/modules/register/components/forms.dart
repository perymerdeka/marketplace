import 'package:flutter/material.dart';
import 'package:marketplace/themes/base.dart';
import 'package:marketplace/themes/components/button.dart';
import 'package:marketplace/themes/components/errors.dart';
import 'package:marketplace/themes/components/forms.dart';
import 'package:marketplace/themes/config.dart';

class SignUpForms extends StatefulWidget {
  const SignUpForms({super.key});

  @override
  State<SignUpForms> createState() => _SignUpFormsState();
}

class _SignUpFormsState extends State<SignUpForms> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  late String confirmPassword;

  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            DefaultTextInputForm(
                labelText: "Email",
                hintText: "Enter yor Email",
                onChanged: (value) {
                  if (value!.isNotEmpty && errors.contains(kEmailNullError)) {
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
                svgIcon: "assets/icons/Mail.svg"),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            DefaultTextInputForm(
                labelText: "Password",
                hintText: "Enter Your Password",
                obscureText: true,
                onSaved: (newValue) => password = newValue!,
                onChanged: (value) {
                  if (value!.isEmpty && !errors.contains(kPassNullError)) {
                    setState(() {
                      errors.add(kPassNullError);
                    });
                  } else if (value.length < 8 &&
                      errors.contains(kShortPassError)) {
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
                  } else if (value.length < 8 &&
                      errors.contains(kShortPassError)) {
                    setState(() {
                      errors.add(kShortPassError);
                    });
                  }
                  return null;
                },
                keyboardType: TextInputType.text,
                svgIcon: "assets/icons/Lock.svg"),
            SizedBox(
              height: getProportionateScreenWidth(30),
            ),
            DefaultTextInputForm(
                labelText: "Confirm Password",
                hintText: "Confirm Your Password",
                obscureText: true,
                onSaved: (newValue) => confirmPassword = newValue!,
                onChanged: (value) {
                  if (value!.isEmpty && !errors.contains(kPassNullError)) {
                    setState(() {
                      errors.add(kPassNullError);
                    });
                  } else if (value.length < 8 &&
                      errors.contains(kShortPassError)) {
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
                  } else if (password != confirmPassword &&
                      errors.contains(kMatchPassError)) {
                    setState(() {
                      errors.add(kShortPassError);
                    });
                  }
                  password = value;
                  return null;
                },
                keyboardType: TextInputType.text,
                svgIcon: "assets/icons/Lock.svg"),
            FormsError(errors: errors),
            SizedBox(
              height: getProportionateScreenWidth(40),
            ),
            DefaultButton(
                buttonText: "Register",
                onPress: () {
                  if (_formKey.currentState!.validate()) {
                    // menuju halaman  Home
                  }
                })
          ],
        ));
  }
}

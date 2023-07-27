import 'package:flutter/material.dart';
import 'package:marketplace/themes/base.dart';
import 'package:marketplace/themes/components/button.dart';
import 'package:marketplace/themes/components/errors.dart';
import 'package:marketplace/themes/components/forms.dart';
import 'package:marketplace/themes/config.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formkey = GlobalKey<FormState>();
  // assign value
  late String? email;

  final List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          DefaultTextInputForm(
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
            height: SizeConfig.screenHeight * 0.1,
          ),
          FormsError(errors: errors),
          DefaultButton(
              buttonText: "Continue",
              onPress: () {
                if (_formkey.currentState!.validate()) {
                  _formkey.currentState!.save();
                }
              }),
          SizedBox(
            height: SizeConfig.screenHeight * 0.1,
          ),
          const NoAccountField()
        ],
      ),
    );
  }
}

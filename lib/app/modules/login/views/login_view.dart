import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:marketplace/app/modules/login/components/body.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: const Text("Sign In"),
    ),
    body: const LoginBody(),
  );
  }
}

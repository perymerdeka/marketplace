import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketplace/app/modules/login_success/components/body.dart';

import '../controllers/login_success_controller.dart';

class LoginSuccessView extends GetView<LoginSuccessController> {
  const LoginSuccessView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        title: Text('Login Success', style: GoogleFonts.poppins(),),
        centerTitle: true,
      ),
      body: const LoginSuccessBody()
    );
  }
}

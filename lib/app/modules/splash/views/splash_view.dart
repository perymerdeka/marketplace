import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:marketplace/app/modules/splash/components/body.dart';
import 'package:marketplace/themes/config.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(body: Body());
  }
}

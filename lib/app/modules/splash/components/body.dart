import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:marketplace/app/modules/splash/components/button.dart';
import 'package:marketplace/app/modules/splash/components/splash_content.dart';
import 'package:marketplace/themes/config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // list map
  List<Map<String, String>> splashData = [
    {
      "text": "Selamat Datang di Marketplace",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "Kami akan Membantu Jualan Anda hingga ke Pelosok Nusantara",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "Mudah Membuat Toko Lebih Mudah Bersama Kami",
      "image": "assets/images/splash_3.png"
    }
  ];

  // list counter current page
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context, index) => SplashContent(
                          text: splashData[index]["text"]!,
                          image: splashData[index]["image"]!,
                        ))),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: [
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(splashData.length,
                            (index) => buildDot(index, currentPage)),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      DefaultButton(
                        buttonText: 'Continue',
                        onPress: () {
                          Get.toNamed("/login");
                        },
                      ),
                      const Spacer()
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

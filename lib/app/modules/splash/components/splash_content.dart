import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketplace/themes/base.dart';
import 'package:marketplace/themes/config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
    required this.text,
    required this.image,
  });

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          "Marketplace",
          style: GoogleFonts.poppins(
              fontSize: getProportionateScreenWidth(36),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(),
        ),
        const Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        )
      ],
    );
  }
}

AnimatedContainer buildDot(int index, int currentPage) {
  return AnimatedContainer(
    duration: kAnimationDuration,
    margin: const EdgeInsets.only(right: 5),
    height: 6,
    width: currentPage == index ? 20 : 6,
    decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3)),
  );
}

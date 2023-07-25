import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketplace/themes/config.dart';

class SocialCard extends StatelessWidget {
  const SocialCard({
    super.key, required this.press, required this.assetsName,
  });

  // widget attributes
  final VoidCallback press;
  final String assetsName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(40),
        decoration: const BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(assetsName),
      ),
    );
  }
}
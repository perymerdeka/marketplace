import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketplace/themes/base.dart';
import 'package:marketplace/themes/config.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Text("Marketplace", style: GoogleFonts.poppins(
                fontSize: getProportionateScreenWidth(36),
                color: kPrimaryColor,
                fontWeight: FontWeight.bold
              ),),
              Text("Selamat Datang di Marketplace", style: GoogleFonts.poppins(),)

            ],
          )
        ),
        Expanded(
          child: Container(
          color: Colors.white,
        )
      )
      ],
    );
  }
}

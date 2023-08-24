import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingButton extends StatelessWidget {
  const LandingButton(
      {super.key,
      required this.buttonText,
      required this.pressMethod,
      required this.buttonTextWeight,
      required this.buttonLength});

  final String buttonText;
  final Function pressMethod;
  final FontWeight buttonTextWeight;
  final double buttonLength;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        fixedSize: MaterialStatePropertyAll(
          Size(buttonLength, 30),
        ),
        backgroundColor:
            MaterialStateColor.resolveWith((states) => Colors.black),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
      onPressed: () {
        pressMethod();
      },
      child: Text(buttonText,
          style: GoogleFonts.aBeeZee(
              color: Colors.white,
              letterSpacing: 2,
              fontWeight: buttonTextWeight)),
    );
  }
}

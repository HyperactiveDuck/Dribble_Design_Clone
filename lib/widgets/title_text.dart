import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.titleText});
  final String titleText;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      titleText,
      style: GoogleFonts.darkerGrotesque(
          fontWeight: FontWeight.bold, fontSize: 30),
    ));
  }
}

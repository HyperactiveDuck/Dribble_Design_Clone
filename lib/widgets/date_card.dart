import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zehracode/constants.dart';

class DateCard extends StatelessWidget {
  const DateCard({super.key, required this.date});
  final String date;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: cardColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardComponent(cardText: date),
                const CardComponent(
                  cardText: 'View',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CardComponent extends StatelessWidget {
  const CardComponent({super.key, required this.cardText});
  final String cardText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        cardText,
        style: GoogleFonts.aBeeZee(
            color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}

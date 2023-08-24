import 'package:flutter/material.dart';
import 'package:zehracode/widgets/date_card.dart';
import 'package:zehracode/widgets/title_text.dart';
import 'package:zehracode/constants.dart';

Container dateView() {
  return Container(
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      color: dateViewColor,
    ),
    child: const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          height: 30,
        ),
        TitleText(
          titleText: 'Escape Records',
        ),
        SizedBox(
          height: 10,
        ),
        DateCard(
          date: '15 Mayıs 2021',
        ),
        DateCard(
          date: '15 Mayıs 2021',
        ),
        DateCard(
          date: '15 Mayıs 2021',
        ),
        DateCard(
          date: '15 Mayıs 2021',
        ),
        DateCard(
          date: '15 Mayıs 2021',
        ),
      ],
    ),
  );
}

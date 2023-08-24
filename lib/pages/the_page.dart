import 'package:flutter/material.dart';
import 'package:zehracode/widgets/date_view.dart';
import 'package:zehracode/widgets/bottom_items.dart';
import 'package:zehracode/widgets/landing_button.dart';
import 'package:zehracode/constants.dart';
import 'package:zehracode/widgets/top_bar.dart';

class ThePage extends StatefulWidget {
  const ThePage({super.key});

  @override
  State<ThePage> createState() => _ThePageState();
}

class _ThePageState extends State<ThePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(55), child: TopBar()),
      bottomNavigationBar: const BottomBar(),
      backgroundColor: scaffold2BackgroundColor,
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  CircleAvatar(
                    minRadius: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.asset(
                        'assets/images/avatar.png',
                        height: 90,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Yücel Arda DEMIRCI',
                    style: nameTextStyle,
                  ),
                  Text(
                    'Flutter Developer',
                    style: titleTextStyle,
                  ),
                  LandingButton(
                    buttonLength: 200,
                    buttonText: 'Request Leave',
                    pressMethod: () {
                      Navigator.pushNamed(context, '/');
                    },
                    buttonTextWeight: FontWeight.bold,
                  )
                ],
              )),
          Expanded(
            flex: 4,
            child: dateView(),
          ),
        ],
      ),
    ));
  }
}

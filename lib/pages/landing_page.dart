import 'package:flutter/material.dart';
import 'package:zehracode/widgets/landing_button.dart';
import 'package:zehracode/constants.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: MainBackground(),
      ),
    );
  }
}

class MainBackground extends StatelessWidget {
  const MainBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image:
            DecorationImage(image: landingBackgroundImage, fit: BoxFit.cover),
      ),
      constraints: const BoxConstraints.expand(),
      child: SafeArea(
          child: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          Text(landingFirstText, style: landingFirstStyle),
          Text(landingSecondText, style: landingSecondStyle),
          const SizedBox(
            height: 20,
          ),
          LandingButton(
            buttonLength: 150,
            buttonTextWeight: FontWeight.normal,
            pressMethod: () {
              Navigator.pushNamed(context, '/secondpage');
            },
            buttonText: 'Let\'s Go',
          ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:zehracode/pages/landing_page.dart';
import 'package:zehracode/pages/the_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/secondpage': (context) => const ThePage(),
        '/': (context) => const LandingPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:zehracode/constants.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        unselectedItemColor: bottomBarItemColor,
        fixedColor: bottomBarItemColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: bottomBarColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: '',
          ),
        ]);
  }
}

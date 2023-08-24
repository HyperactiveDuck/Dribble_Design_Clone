import 'package:flutter/material.dart';
import 'package:zehracode/constants.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.filter_list,
          size: 40,
          color: topBarItemColor,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications_active_outlined,
            size: 40,
            color: topBarItemColor,
          ),
        ),
      ],
    );
  }
}

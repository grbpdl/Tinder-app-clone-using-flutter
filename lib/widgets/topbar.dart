import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Image.asset(
            'assets/photos/tinder_fulllogo.png',
            width: 100,
            height: 100,
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.notifications),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.filter_list_rounded),
            ),
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      backgroundColor: Colors.white,
      shadowColor: Colors.white,
      indicatorColor: Colors.red,
      elevation: 0,
      destinations: const [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Icon(Icons.notifications),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Icon(Icons.notifications),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Icon(Icons.filter_list_rounded),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Icon(Icons.notifications),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Icon(Icons.filter_list_rounded),
        ),
      ],
    );
  }
}

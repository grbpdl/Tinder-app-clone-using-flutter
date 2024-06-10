import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tinder_clone/pages/home_screen.dart';
import 'package:tinder_clone/themes/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goHome();
    super.initState();
  }

  void goHome() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Homepage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [ColorPallate.redColour, ColorPallate.orangeColour])),
      child: Center(
        child: Image.asset(
          'assets/photos/tinderwhitelogo.png',
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}

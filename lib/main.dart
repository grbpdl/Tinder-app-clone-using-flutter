import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.montserrat().fontFamily,
      ),
      home: Scaffold(
        body: Column(
          children: [
            const Center(
              child: Text(
                'Hello World!',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Image.asset(
              'assets/photos/tinderlogo.png',
            ),
          ],
        ),
      ),
    );
  }
}

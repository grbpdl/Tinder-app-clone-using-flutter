import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardWithImage extends StatelessWidget {
  final double? width;
  final String image;
  final String text;
  const CardWithImage(
      {this.width = double.maxFinite, required this.image, required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: width,
        height: 150,
        child: Card(
            elevation: 3,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Text(
                  text,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ],
            )),
      ),
    );
  }
}

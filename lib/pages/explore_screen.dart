import 'package:flutter/material.dart';
import 'package:tinder_clone/widgets/card.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardWithImage(
            width: MediaQuery.of(context).size.width,
            image: 'assets/photos/landscape.jpg',
            text: "Get Verified",
          ),
          const Text(
            "Welcome to Explore",
            style: TextStyle(color: Colors.black, fontSize: 10),
          ),
          const Text(
            "My vibe",
            style: TextStyle(
                color: Color.fromARGB(255, 120, 119, 119), fontSize: 10),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                CardWithImage(
                    width: 150,
                    image: 'assets/photos/group1.jpg',
                    text: "Looking for love"),
                CardWithImage(
                    width: 150,
                    image: 'assets/photos/individual3.jpg',
                    text: "Free Tonight")
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                CardWithImage(
                    width: 150,
                    image: 'assets/photos/group3.jpg',
                    text: "Date Night"),
                CardWithImage(
                    width: 150,
                    image: 'assets/photos/group4.jpg',
                    text: "Looking for Friend")
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                CardWithImage(
                    width: 150,
                    image: 'assets/photos/individual2.jpg',
                    text: "Music Lovers"),
                CardWithImage(
                    width: 150,
                    image: 'assets/photos/individual3.jpg',
                    text: "Sporty")
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                CardWithImage(
                    width: 150,
                    image: 'assets/photos/individual3.jpg',
                    text: "Binge Watchers"),
                CardWithImage(
                    width: 150,
                    image: 'assets/photos/group1.jpg',
                    text: "Foodies")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

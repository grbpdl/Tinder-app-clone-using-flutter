import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:swipable_stack/swipable_stack.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  late final SwipableStackController _controller;

  void _listenController() => setState(() {});

  @override
  void initState() {
    super.initState();
    _controller = SwipableStackController()..addListener(_listenController);
  }

  @override
  void dispose() {
    super.dispose();
    _controller
      ..removeListener(_listenController)
      ..dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 700,
      color: const Color.fromARGB(255, 255, 255, 255),
      child: SwipableStack(
        swipeAssistDuration: const Duration(milliseconds: 500),
        detectableSwipeDirections: const {
          SwipeDirection.right,
          SwipeDirection.left,
        },
        controller: _controller,
        stackClipBehaviour: Clip.none,
        onSwipeCompleted: (index, direction) {
          if (kDebugMode) {
            print('$index, $direction');
          }
        },
        horizontalSwipeThreshold: 0.8,
        verticalSwipeThreshold: 0.8,
        builder: (context, properties) {
          return Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/photos/individual2.jpg',
                  height: double.maxFinite,
                  width: double.maxFinite,
                ),
              ),
              // more custom overlay possible than with overlayBuilder
              if (properties.stackIndex == 0 &&
                  properties.direction == SwipeDirection.right)
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 5,
                    ),
                    color: const Color.fromARGB(0, 255, 255, 255),
                  ),
                  child: const Text(
                    'Liked',
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              if (properties.stackIndex == 0 &&
                  properties.direction == SwipeDirection.left)
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.red,
                      width: 5,
                    ),
                    color: const Color.fromARGB(0, 255, 255, 255),
                  ),
                  child: const Text(
                    'Dislike',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              Positioned(
                bottom: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 80.0,
                        height: 80.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            width: 2.0,
                          ),
                        ),
                        child: const Icon(
                          Icons.thumb_down,
                          size: 60,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              width: 2.0,
                            ),
                          ),
                          child: const Icon(
                            Icons.thumb_up,
                            size: 60,
                            color: Colors.green,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

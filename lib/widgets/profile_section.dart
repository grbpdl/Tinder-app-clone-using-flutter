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
      width: 300,
      height: 700,
      color: Colors.amber,
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
          final itemIndex = properties.index % 4; //_images.length

          return Stack(
            children: [
              Container(
                color: Colors.red,
                width: 100,
                height: 500,
              ),
              // more custom overlay possible than with overlayBuilder
              if (properties.stackIndex == 0 && properties.direction != null)
                Text('$properties.swipeProgress' '$properties.direction'),
              // CardOverlay(
              //   swipeProgress: properties.swipeProgress,
              //   direction: properties.direction!,
              // )
            ],
          );
        },
      ),
    );
  }
}

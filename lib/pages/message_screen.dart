import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        reverse: true,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: const EdgeInsets.all(8.0),
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Text(
                  'Hello',
                ),
              ),
            );
          }
          return Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                'Hi!',
              ),
            ),
          );
        },
      ),
    );
  }
}

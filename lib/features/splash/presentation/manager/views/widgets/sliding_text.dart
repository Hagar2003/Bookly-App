import 'package:flutter/material.dart';

class animatedWidget extends StatelessWidget {
  const animatedWidget({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: Text(
              'Read free Books',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          );
        });
  }
}

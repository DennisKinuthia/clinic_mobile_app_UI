import 'package:flutter/material.dart';

class CallerWidget extends StatelessWidget {
  const CallerWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 28.0,
      right: 16.0,
      child: Container(
        width: size.width * .25,
        height: size.height * .15,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            image: const DecorationImage(
              image: AssetImage('assets/eric.jpeg'),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}

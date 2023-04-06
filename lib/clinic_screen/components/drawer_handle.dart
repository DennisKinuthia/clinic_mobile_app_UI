import 'package:flutter/material.dart';

class DrawerHandle extends StatelessWidget {
  const DrawerHandle({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Container(
        width: size.width * .135,
        height: 8.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          gradient: const RadialGradient(
            colors: [
              Color.fromARGB(255, 89, 219, 255),
              Color.fromARGB(255, 0, 136, 241),
            ],
            center: Alignment.centerRight,
            radius: 6.2,
          ),
        ),
      ),
    );
  }
}

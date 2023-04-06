import 'package:flutter/material.dart';

class ClinicDetailsPageBottomNav extends StatelessWidget {
  const ClinicDetailsPageBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 30.0),
      child: Container(
        width: size.width,
        height: size.height * .065,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          gradient: const RadialGradient(
            colors: [
              Color.fromARGB(255, 89, 219, 255),
              Color.fromARGB(255, 0, 136, 241),
            ],
            center: Alignment.centerRight,
            radius: 5.2,
          ),
        ),
        child: const Center(
          child: Text(
            'Make an Appointment',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

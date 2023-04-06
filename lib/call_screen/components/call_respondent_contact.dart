import 'package:dentist/common_widgets/spacing.dart';
import 'package:flutter/material.dart';

class CallRespondentContact extends StatelessWidget {
  const CallRespondentContact({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: size.height * .7,
      left: 16.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Dental Surgeon',
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.w500,
              fontSize: 18.0,
            ),
          ),
          verticalSpacing(8.0),
          const Text(
            'Dr. Claire Wangari',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 28.0,
            ),
          ),
        ],
      ),
    );
  }
}

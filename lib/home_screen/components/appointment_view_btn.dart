import 'package:flutter/material.dart';

class AppointmentViewButton extends StatelessWidget {
  const AppointmentViewButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35.0,
      height: 35.0,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.0,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.white,
          size: 18.0,
        ),
      ),
    );
  }
}

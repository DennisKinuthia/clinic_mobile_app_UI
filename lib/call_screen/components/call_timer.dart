import 'package:dentist/common_widgets/spacing.dart';
import 'package:flutter/material.dart';

class CallTimer extends StatelessWidget {
  const CallTimer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 12.0,
      left: 24.0,
      child: Container(
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.black.withOpacity(.2),
        ),
        child: Row(
          children: [
            horizontalSpace(4.0),
            Container(
              width: 10.0,
              height: 10.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
            ),
            horizontalSpace(8.0),
            const Text(
              '12:06',
              style: TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.w500,
              ),
            ),
            horizontalSpace(4.0),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    this.notification = false,
    required this.child,
    required this.width,
    required this.height,
    this.onTap,
  });

  final bool notification;
  final Widget child;
  final double width;
  final double height;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: notification
            ? Colors.blue.withOpacity(.15)
            : Colors.black.withOpacity(.3),
        borderRadius: notification
            ? BorderRadius.circular(width / 2)
            : BorderRadius.circular(12.0),
      ),
      child: child,
    );
  }
}

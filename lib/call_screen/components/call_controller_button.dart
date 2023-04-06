import 'package:flutter/material.dart';

class CallControllerButton extends StatelessWidget {
  const CallControllerButton({
    super.key,
    required this.child,
    required this.bgColor,
    required this.width,
    required this.height,
    this.onTap,
  });

  final Widget child;
  final Color? bgColor;
  final double width;
  final double height;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: bgColor,
        ),
        child: child,
      ),
    );
  }
}

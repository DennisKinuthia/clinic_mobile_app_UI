import 'package:dentist/call_screen/components/call_controller_button.dart';
import 'package:dentist/common_widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CallControls extends StatelessWidget {
  const CallControls({super.key, required this.size});

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: size.height * .075,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CallControllerButton(
            width: 50.0,
            height: 50.0,
            bgColor: Colors.black.withOpacity(.5),
            child: const Icon(
              Icons.videocam_rounded,
              color: Colors.white70,
            ),
          ),
          horizontalSpace(30.0),
          CallControllerButton(
            onTap: context.pop,
            width: 62.0,
            height: 62.0,
            bgColor: Colors.red,
            child: const Icon(
              Icons.call_end,
              color: Colors.white,
            ),
          ),
          horizontalSpace(30.0),
          CallControllerButton(
            width: 50.0,
            height: 50.0,
            bgColor: Colors.black.withOpacity(.5),
            child: const Icon(
              Icons.mic_rounded,
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:dentist/call_screen/components/call_controls.dart';
import 'package:dentist/call_screen/components/call_respondent_contact.dart';
import 'package:dentist/call_screen/components/call_timer.dart';
import 'package:dentist/call_screen/components/caller_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // hide status bar
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(.2), BlendMode.darken),
                image: const AssetImage('assets/claire.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          CallerWidget(size: size),
          const CallTimer(),
          CallRespondentContact(size: size),
          CallControls(size: size),
        ],
      ),
    );
  }
}

import 'package:dentist/common_widgets/spacing.dart';
import 'package:flutter/material.dart';

class HomeBottomNavBar extends StatelessWidget {
  const HomeBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 40.0),
      child: Container(
        width: size.width,
        height: size.height * .075,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 5.0,
              blurStyle: BlurStyle.outer,
              color: Colors.grey.withOpacity(.5),
            ),
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.home_rounded,
                  size: 28.0,
                  color: Colors.blue,
                ),
                verticalSpacing(4.0),
                const Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.calendar_today_outlined,
                  size: 28.0,
                  color: Colors.grey,
                ),
                verticalSpacing(4.0),
                const Text(
                  'Appointment',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.favorite_rounded,
                  size: 28.0,
                  color: Colors.grey,
                ),
                verticalSpacing(4.0),
                const Text(
                  'Favorite',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Icon(
                  Icons.message_rounded,
                  size: 28.0,
                  color: Colors.grey,
                ),
                verticalSpacing(4.0),
                const Text(
                  'Message',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10.0,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

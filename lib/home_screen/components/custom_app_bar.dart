import 'package:dentist/common_widgets/spacing.dart';
import 'package:dentist/home_screen/components/icon_button.dart';
import 'package:flutter/material.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 12.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  'Hello',
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  'Sophie Isabella 👋',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Stack(
                  children: [
                    CustomIconButton(
                      notification: true,
                      width: 35.0,
                      height: 35.0,
                      child: Icon(
                        Icons.notifications,
                        size: 20.0,
                        color: Colors.blue[800],
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        width: 9.0,
                        height: 9.0,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
                horizontalSpace(12.0),
                const SizedBox(
                  width: 35.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/girl.jpeg'),
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

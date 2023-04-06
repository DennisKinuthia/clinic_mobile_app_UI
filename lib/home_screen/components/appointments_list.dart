import 'package:dentist/common_widgets/spacing.dart';
import 'package:dentist/home_screen/components/appointments_slider.dart';
import 'package:flutter/material.dart';

class AppointmentsList extends StatelessWidget {
  const AppointmentsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  'My Appointments',
                  style: TextStyle(
                    color: Color.fromARGB(255, 6, 94, 157),
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.w600,
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
            verticalSpacing(12.0),
            const AppointmentsSlider(),
          ],
        ),
      ),
    );
  }
}

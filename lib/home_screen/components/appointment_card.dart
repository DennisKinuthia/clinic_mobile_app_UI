import 'package:dentist/common_widgets/spacing.dart';
import 'package:dentist/domain_layer/appointment_class.dart';
import 'package:dentist/home_screen/components/appointment_location_date.dart';
import 'package:dentist/home_screen/components/appointment_view_btn.dart';
import 'package:dentist/home_screen/components/doctor_info.dart';
import 'package:flutter/material.dart';

class AppointmentCard extends StatelessWidget {
  const AppointmentCard({super.key, required this.appointment});

  final Appointment appointment;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 8.0,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        gradient: const RadialGradient(
          colors: [
            Color.fromARGB(255, 4, 192, 245),
            Color.fromARGB(255, 0, 140, 248),
          ],
          center: Alignment.centerRight,
          radius: 2.5,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          verticalSpacing(5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DoctorInformation(appointment: appointment),
              const AppointmentViewButton(),
            ],
          ),
          verticalSpacing(16.0),
          AppointmentDateAndLocation(appointment: appointment),
        ],
      ),
    );
  }
}

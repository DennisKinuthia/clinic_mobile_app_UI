import 'package:dentist/common_widgets/spacing.dart';
import 'package:dentist/domain_layer/appointment_class.dart';
import 'package:flutter/material.dart';

class AppointmentDateAndLocation extends StatelessWidget {
  const AppointmentDateAndLocation({
    super.key,
    required this.appointment,
  });

  final Appointment appointment;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.2),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              const Icon(
                Icons.access_time_filled,
                color: Colors.white,
                size: 18.0,
              ),
              horizontalSpace(8.0),
              Text(
                appointment.dateTime,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
          verticalSpacing(8.0),
          Row(
            children: <Widget>[
              const Icon(
                Icons.location_pin,
                size: 18.0,
                color: Colors.white,
              ),
              horizontalSpace(8.0),
              Text(
                appointment.location,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

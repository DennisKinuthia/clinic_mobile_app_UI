import 'package:dentist/common_widgets/spacing.dart';
import 'package:dentist/domain_layer/appointment_class.dart';
import 'package:flutter/material.dart';

class DoctorInformation extends StatelessWidget {
  const DoctorInformation({
    super.key,
    required this.appointment,
  });

  final Appointment appointment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        CircleAvatar(
          backgroundImage: AssetImage(appointment.doctorImg),
        ),
        horizontalSpace(12.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              appointment.doctor,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0),
            ),
            verticalSpacing(3.0),
            Text(
              appointment.doctorSpeciality,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

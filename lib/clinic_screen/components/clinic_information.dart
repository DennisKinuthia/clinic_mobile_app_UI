import 'package:dentist/clinic_screen/components/clinic_location_and_call.dart';
import 'package:dentist/clinic_screen/components/clinic_location_map.dart';
import 'package:dentist/clinic_screen/components/clinic_services_widget.dart';
import 'package:dentist/domain_layer/clinic_class.dart';
import 'package:flutter/material.dart';

class ClinicInformation extends StatelessWidget {
  const ClinicInformation({super.key, required this.clinic});
  final Clinic clinic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            clinic.name,
            style: TextStyle(
              color: Colors.grey[800],
              fontWeight: FontWeight.w600,
              fontSize: 22.0,
            ),
          ),
          ClinicLocationAndPhone(clinic: clinic),
          ClinicServicesWidget(clinic: clinic),
          const ClinicLocationMap(),
        ],
      ),
    );
  }
}

import 'package:dentist/common_widgets/spacing.dart';
import 'package:dentist/domain_layer/clinic_class.dart';
import 'package:flutter/material.dart';

class ClinicServicesWidget extends StatelessWidget {
  const ClinicServicesWidget({super.key, required this.clinic});

  final Clinic clinic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Services',
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          verticalSpacing(12.0),
          Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.start,
            spacing: 12.0,
            runSpacing: 8.0,
            children: clinic.services
                .map((service) => Container(
                      padding: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.blue.withOpacity(.2),
                      ),
                      child: Text(service),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}

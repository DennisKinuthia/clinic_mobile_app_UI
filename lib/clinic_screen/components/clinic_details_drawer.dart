import 'package:dentist/clinic_screen/components/clinic_details_box.dart';
import 'package:dentist/domain_layer/clinic_class.dart';
import 'package:flutter/material.dart';

class ClinicDetailsDrawer extends StatelessWidget {
  const ClinicDetailsDrawer({super.key, required this.clinic});
  final Clinic clinic;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: .55,
      maxChildSize: .825,
      minChildSize: .55,
      builder: (context, controller) {
        return SingleChildScrollView(
          controller: controller,
          scrollDirection: Axis.vertical,
          child: ClinicDetailsBox(clinic: clinic),
        );
      },
    );
  }
}

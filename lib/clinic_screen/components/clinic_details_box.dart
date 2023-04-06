import 'package:dentist/clinic_screen/components/clinic_information.dart';
import 'package:dentist/clinic_screen/components/drawer_handle.dart';
import 'package:dentist/domain_layer/clinic_class.dart';
import 'package:flutter/material.dart';

class ClinicDetailsBox extends StatelessWidget {
  const ClinicDetailsBox({super.key, required this.clinic});
  final Clinic clinic;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: size.width,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
          child: Column(
            children: <Widget>[
              const DrawerHandle(),
              ClinicInformation(clinic: clinic)
            ],
          ),
        ),
      ],
    );
  }
}

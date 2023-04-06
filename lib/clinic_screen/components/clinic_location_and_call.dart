import 'package:dentist/common_widgets/spacing.dart';
import 'package:dentist/domain_layer/clinic_class.dart';
import 'package:dentist/routing/app_routing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ClinicLocationAndPhone extends StatelessWidget {
  const ClinicLocationAndPhone({super.key, required this.clinic});
  final Clinic clinic;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        verticalSpacing(16.0),
        Row(
          children: <Widget>[
            const Icon(
              Icons.location_pin,
              color: Colors.grey,
              size: 20.0,
            ),
            horizontalSpace(8.0),
            Text(
              clinic.location,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 12.0,
              ),
            ),
          ],
        ),
        verticalSpacing(8.0),
        GestureDetector(
          onTap: () => context.pushNamed(AppRoutes.call.name),
          child: Row(
            children: <Widget>[
              const Icon(
                Icons.call,
                color: Colors.grey,
                size: 20.0,
              ),
              horizontalSpace(8.0),
              Text(
                clinic.phoneNumber,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
        verticalSpacing(8.0),
        Row(
          children: <Widget>[
            Text(
              '${clinic.rating}',
              style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.w500,
                fontSize: 14.0,
              ),
            ),
            horizontalSpace(8.0),
            for (var i = 0; i < clinic.rating.round(); i++)
              const Icon(
                Icons.star,
                size: 16.0,
                color: Colors.amberAccent,
              )
          ],
        ),
      ],
    );
  }
}

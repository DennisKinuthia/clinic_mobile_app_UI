import 'package:dentist/common_widgets/spacing.dart';
import 'package:dentist/domain_layer/clinic_class.dart';
import 'package:flutter/material.dart';

class ClinicCardBriefInfo extends StatelessWidget {
  const ClinicCardBriefInfo({
    super.key,
    required this.clinic,
  });

  final Clinic clinic;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        width: double.infinity,
        height: size.height * .1275,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 5.0,
              blurStyle: BlurStyle.outer,
              color: Colors.grey.withOpacity(.5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              clinic.name,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey[800],
              ),
            ),
            verticalSpacing(12.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.access_time,
                  color: Colors.grey[400],
                  size: 16.0,
                ),
                horizontalSpace(12.0),
                Text(
                  clinic.operationTiming,
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
            verticalSpacing(8.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.location_pin,
                  color: Colors.grey[400],
                  size: 16.0,
                ),
                horizontalSpace(12.0),
                Text(
                  clinic.location,
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

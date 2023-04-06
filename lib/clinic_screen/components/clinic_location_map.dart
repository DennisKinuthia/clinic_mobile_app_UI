import 'package:dentist/common_widgets/spacing.dart';
import 'package:flutter/material.dart';

class ClinicLocationMap extends StatelessWidget {
  const ClinicLocationMap({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Location',
          style: TextStyle(
            color: Colors.grey[800],
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        verticalSpacing(12.0),
        Container(
          width: double.infinity,
          height: size.height * .30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            image: const DecorationImage(
              image: AssetImage('assets/map.png'),
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}

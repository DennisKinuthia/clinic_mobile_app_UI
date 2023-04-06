import 'package:dentist/domain_layer/clinic_class.dart';
import 'package:dentist/home_screen/components/clinic_card_brief_info.dart';
import 'package:dentist/home_screen/components/clinic_favs_icon.dart';
import 'package:flutter/material.dart';

class ClinicCard extends StatelessWidget {
  const ClinicCard({super.key, required this.clinic});

  final Clinic clinic;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      width: size.width * .60,
      height: size.height * .275,
      decoration: const BoxDecoration(),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              image: DecorationImage(
                image: AssetImage(
                  clinic.images[0],
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const ClinicFavoriteIcon(),
          ClinicCardBriefInfo(clinic: clinic)
        ],
      ),
    );
  }
}

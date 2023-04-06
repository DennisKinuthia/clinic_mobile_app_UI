import 'package:dentist/data/list_of_clinics.dart';
import 'package:dentist/home_screen/components/clinic_card.dart';
import 'package:dentist/routing/app_routing.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ClinicList extends StatelessWidget {
  const ClinicList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: clinics
                .map((clinic) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: GestureDetector(
                        onTap: () => context.goNamed(AppRoutes.clinic.name,
                            params: {'clinicName': clinic.name}),
                        child: ClinicCard(clinic: clinic),
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}

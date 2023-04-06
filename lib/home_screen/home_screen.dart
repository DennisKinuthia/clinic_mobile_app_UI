import 'package:dentist/home_screen/components/appointments_list.dart';
import 'package:dentist/home_screen/components/categories.dart';
import 'package:dentist/home_screen/components/clinic_card_list.dart';
import 'package:dentist/home_screen/components/custom_app_bar.dart';
import 'package:dentist/home_screen/components/home_bottom_nav.dart';
import 'package:dentist/home_screen/components/search.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: HomeBottomNavBar(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            CustomHomeAppBar(),
            SearchField(),
            AppointmentsList(),
            Categories(),
            ClinicList(),
          ],
        ),
      ),
    );
  }
}

import 'package:dentist/data/list_of_appointments.dart';
import 'package:dentist/home_screen/components/appointment_card.dart';
import 'package:flutter/material.dart';

class AppointmentsSlider extends StatefulWidget {
  const AppointmentsSlider({super.key});

  @override
  State<AppointmentsSlider> createState() => _AppointmentsSliderState();
}

class _AppointmentsSliderState extends State<AppointmentsSlider> {
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * .9,
      height: size.height * .25,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: _pageController,
        itemCount: listOfAppointments.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              AppointmentCard(
                appointment: listOfAppointments[index],
              ),
            ],
          );
        },
      ),
    );
  }
}

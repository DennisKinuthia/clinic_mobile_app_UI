import 'package:dentist/clinic_screen/components/clinic_details_drawer.dart';
import 'package:dentist/clinic_screen/components/clinic_details_image_indicators.dart';
import 'package:dentist/clinic_screen/components/clinic_details_page_app_bar.dart';
import 'package:dentist/clinic_screen/components/clinic_details_page_bottom_nav.dart';
import 'package:dentist/data/list_of_clinics.dart';
import 'package:dentist/domain_layer/clinic_class.dart';
import 'package:flutter/material.dart';

class ClinicScreen extends StatefulWidget {
  const ClinicScreen({super.key, required this.clinicName});

  final String clinicName;

  @override
  State<ClinicScreen> createState() => _ClinicScreenState();
}

class _ClinicScreenState extends State<ClinicScreen> {
  late final Clinic _clinicDetails;
  final _pageController = PageController();
  int _activeIndex = 0;
  @override
  void initState() {
    super.initState();
    setState(() {
      _clinicDetails =
          clinics.firstWhere((clinic) => clinic.name == widget.clinicName);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _pageController.addListener(() {
      setState(() {
        _activeIndex = _pageController.page!.round();
      });
    });
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const ClinicDetailsPageBottomNav(),
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: size.height * .5,
            child: PageView.builder(
              itemCount: _clinicDetails.images.length,
              controller: _pageController,
              itemBuilder: (context, index) {
                return Image.asset(
                  _clinicDetails.images[index],
                  fit: BoxFit.fill,
                );
              },
            ),
          ),
          const ClinicPageAppBar(),
          Transform(
            transform: Matrix4.identity()
              ..translate(0.0, -size.height * .075, 0.0),
            child: ImageSlicerIndicator(
              activeIndex: _activeIndex,
              length: _clinicDetails.images.length,
            ),
          ),
          ClinicDetailsDrawer(
            clinic: _clinicDetails,
          ),
        ],
      ),
    );
  }
}

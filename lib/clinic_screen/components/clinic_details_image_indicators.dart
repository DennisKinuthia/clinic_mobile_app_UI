import 'package:flutter/material.dart';
import 'package:flutter_slider_indicator/flutter_slider_indicator.dart';

class ImageSlicerIndicator extends StatelessWidget {
  const ImageSlicerIndicator({
    super.key,
    required this.activeIndex,
    required this.length,
  });

  final int activeIndex;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: SliderIndicator(
        activeIndex: activeIndex,
        length: length,
        indicator: Icon(
          Icons.radio_button_unchecked,
          color: Colors.grey[200],
          size: 20.0,
        ),
        activeIndicator: const Icon(
          Icons.fiber_manual_record,
          color: Colors.blue,
        ),
      ),
    );
  }
}

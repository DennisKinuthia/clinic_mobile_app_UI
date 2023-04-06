import 'package:flutter/material.dart';

class ClinicFavoriteIcon extends StatelessWidget {
  const ClinicFavoriteIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 12.0,
      right: 12.0,
      child: Container(
        width: 30.0,
        height: 30.0,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(.7),
            borderRadius: BorderRadius.circular(30.0)),
        child: Center(
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_outlined,
              size: 16.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

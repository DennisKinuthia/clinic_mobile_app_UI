import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ClinicPageAppBar extends StatelessWidget {
  const ClinicPageAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 24.0,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 28.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(.3),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                  size: 18.0,
                ),
              ),
            ),
            Container(
              width: 40.0,
              height: 40.0,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(.3),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.white,
                  size: 18.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

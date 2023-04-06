import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
        child: Container(
          height: 36.0,
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: const [
              BoxShadow(
                blurRadius: 1.0,
                blurStyle: BlurStyle.inner,
                spreadRadius: 1.0,
                color: Color.fromARGB(255, 240, 240, 240),
              ),
            ],
          ),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(
                Icons.search,
              ),
              labelText: 'Search a clinic or health issue',
              labelStyle: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

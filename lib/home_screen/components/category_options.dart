import 'package:flutter/material.dart';

class CategoryOptions extends StatelessWidget {
  const CategoryOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categoryOptions = [
      'Dental Clinic',
      'Pedeatric',
      'Orthopedic',
      'Opthamologist',
      'Cardiologist',
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(children: [
        const CategoryOptionCard(
          category: 'Near Me',
          isActive: true,
        ),
        ...categoryOptions
            .map((category) => CategoryOptionCard(category: category))
            .toList(),
      ]),
    );
  }
}

class CategoryOptionCard extends StatelessWidget {
  const CategoryOptionCard({
    super.key,
    this.isActive = false,
    required this.category,
  });

  final String category;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        gradient: isActive
            ? const RadialGradient(
                colors: [
                  Color.fromARGB(255, 89, 219, 255),
                  Color.fromARGB(255, 0, 136, 241),
                ],
                center: Alignment.centerRight,
                radius: 4.2,
              )
            : null,
        borderRadius: BorderRadius.circular(10.0),
        border: Border.all(
          width: .75,
          color: Colors.grey.withOpacity(.3),
        ),
      ),
      child: Text(
        category,
        style: TextStyle(
          color: isActive ? Colors.white : null,
        ),
      ),
    );
  }
}

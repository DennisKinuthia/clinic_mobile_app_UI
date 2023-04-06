import 'package:dentist/domain_layer/clinic_class.dart';

List<Clinic> clinics = [
  const Clinic(
    name: 'Ophira Clinic',
    operationTiming: '08:00 AM - 05:00 PM',
    location: 'Jumeria 2, Dubai, UAE',
    images: [
      'assets/clinic1.jpeg',
      'assets/clinic2.jpeg',
      'assets/clinic3.jpeg'
    ],
    services: [
      'Dentistry',
      'Orthopedic',
      'Pedeatrics',
      'Cardilogy',
      'Optometry',
      'Dermatology',
      'Physiotherapy',
    ],
    rating: 4.5,
    phoneNumber: '+254 722 222 222',
  ),
  const Clinic(
    name: 'Santon Clinic',
    operationTiming: '08:00 AM - 05:00 PM',
    location: 'Kasarani, Nairobi, Kenya',
    images: [
      'assets/clinic3.jpeg',
      'assets/clinic1.jpeg',
      'assets/clinic2.jpeg'
    ],
    services: [
      'Dentistry',
      'Orthopedic',
      'Pedeatrics',
      'Cardilogy',
      'Optometry',
      'Dermatology',
      'Physiotherapy',
    ],
    rating: 3.5,
    phoneNumber: '+971 50 000 0000',
  ),
  const Clinic(
    name: 'Njoro Clinic',
    operationTiming: '08:00 AM - 05:00 PM',
    location: 'Njoro, Nakuru, Kenya',
    images: [
      'assets/clinic2.jpeg',
      'assets/clinic3.jpeg',
      'assets/clinic1.jpeg'
    ],
    services: [
      'Dentistry',
      'Orthopedics',
      'Pedeatrics',
      'Cardilogy',
      'Optometry',
      'Dermatology',
      'Physiotherapy',
    ],
    rating: 5.5,
    phoneNumber: '+254 711 111 111',
  ),
  const Clinic(
    name: 'Satwa Clinic',
    operationTiming: '08:00 AM - 05:00 PM',
    location: 'Al Satwa, Dubai, UAE',
    images: [
      'assets/clinic3.jpeg',
      'assets/clinic2.jpeg',
      'assets/clinic1.jpeg'
    ],
    services: [
      'Dentistry',
      'Orthopedic',
      'Pedeatrics',
      'Cardilogy',
      'Optometry',
      'Dermatology',
      'Physiotherapy',
    ],
    rating: 6.5,
    phoneNumber: '+971 51 111 11111',
  ),
];

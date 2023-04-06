import 'package:dentist/domain_layer/appointment_class.dart';

final listOfAppointments = [
  const Appointment(
    doctor: 'Dr. Eric Genius',
    doctorImg: 'assets/eric.jpeg',
    doctorSpeciality: 'General Practitioner',
    location: 'Ophira Clinic, 121 Jumeira, DXB',
    dateTime: 'January 15 at 09:00 AM - 11:00 AM',
  ),
  const Appointment(
    doctor: 'Dr. Victoria Wambui',
    doctorImg: 'assets/elizabeth.jpeg',
    doctorSpeciality: 'Dental Surgeon',
    location: 'Ophira Clinic, Latifa Tower,SZR',
    dateTime: 'April 8 at 12:30 AM - 14:00 AM',
  ),
  const Appointment(
    doctor: 'Dr. Declan Wright',
    doctorImg: 'assets/declan.jpeg',
    doctorSpeciality: 'Orthopedic Surgeon',
    location: 'Ophira Clinic, Dubai Marina, DXB',
    dateTime: 'December 26 at 10:30 AM - 12:30 AM',
  ),
  const Appointment(
    doctor: 'Dr. Claire Wangari',
    doctorImg: 'assets/claire.jpeg',
    doctorSpeciality: 'Cardiologist',
    location: 'Ophira Clinic, Cornish, Abu Dhabi',
    dateTime: 'July 21 at 015:30 AM - 17:00 AM',
  ),
];

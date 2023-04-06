class Clinic {
  const Clinic({
    required this.name,
    required this.operationTiming,
    required this.location,
    required this.images,
    required this.services,
    required this.rating,
    required this.phoneNumber,
  });
  final String name;
  final String operationTiming;
  final String location;
  final List<String> images;
  final List<String> services;
  final double rating;
  final String phoneNumber;
}

class Hospital {
  final String id;
  final String name;
  final String address;
  final String phone;
  final String imageUrl;
  final int bedsAvailable;

  const Hospital({
    required this.id,
    required this.name,
    required this.address,
    required this.phone,
    required this.imageUrl,
    required this.bedsAvailable,
  });
}
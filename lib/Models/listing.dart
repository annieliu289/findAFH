class Listing {
  final String id;
  final String name;
  final String city;
  final String address;
  final String rating;
  final int contact;
  final String image;
  final int availableBeds;
  final int startingPrice;
  final double latitude;
  final double longitude;

  const Listing({
    required this.id,
    required this.name,
    required this.city,
    required this.address,
    required this.rating,
    required this.contact,
    required this.image,
    required this.availableBeds,
    required this.startingPrice,
    required this.latitude,
    required this.longitude,
  });
}

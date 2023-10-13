class InternetConnectiviyModel {
  final String title;
  final String description;
  final int price;
  final double rating;
  final dynamic brand;
  final String thumbnail;
  final List<String> images;

  InternetConnectiviyModel({
    required this.title,
    required this.description,
    required this.price,
    required this.rating,
    required this.brand,
    required this.thumbnail,
    required this.images,
  });

  factory InternetConnectiviyModel.fromJson(Map<String, dynamic> json) {
    return InternetConnectiviyModel(
      title: json["title"],
      description: json["description"],
      price: json["price"],
      rating: json["rating"],
      brand: json["brand"],
      thumbnail: json["thumbnail"],
      images: List<String>.from(json['images']),
    );
  }
}

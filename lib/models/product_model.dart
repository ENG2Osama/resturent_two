class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final double rating;
  final String calories;
  final String prepTime;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.rating = 4.5,
    this.calories = '350 kcal',
    this.prepTime = '20 min',
  });
}
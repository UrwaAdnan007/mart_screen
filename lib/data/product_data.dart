// lib/product_data.dart
class Product {
  final String title;
  final String price;
  final String imagePath;

  Product({required this.title, required this.price, required this.imagePath});
}

final List<Product> fruitsAndVegesProducts = [
  Product(
    title: 'Avocados - 3ct',
    price: '7',
    imagePath: 'assets/images/avocados.png',
  ),
  Product(
    title: 'Mandarin Oranges - 3lb',
    price: '2.9',
    imagePath: 'assets/images/oranges.png',
  ),
  Product(
    title: 'Green Grapes - 2lb',
    price: '9',
    imagePath: 'assets/images/grapes.png',
  ),
];
final List<Product> bakeryProducts = [
  Product(
    title: 'Tastykake Krimpets 3ct',
    price: '11',
    imagePath: 'assets/images/tastykake.png',
  ),
  Product(
    title: 'Oreo Cakesters 3.03oz',
    price: '18',
    imagePath: 'assets/images/oreo.png',
  ),
  Product(
    title: 'Toothfairy Cosmic Brookie 1 ct',
    price: '8.99',
    imagePath: 'assets/images/brookie.png',
  ),
];
final List<Product> seafoodProducts = [
  Product(
    title: 'iPhone 14 Pro Max 256GB Deep',
    price: '1300',
    imagePath: 'assets/images/iphone.png',
  ),
  Product(
    title: 'iPhone 14 Pro Max 256GB Deep',
    price: '1300',
    imagePath: 'assets/images/iphone.png',
  ),
  Product(
    title: 'iPhone 14 Pro Max 256GB Deep',
    price: '1300',
    imagePath: 'assets/images/iphone.png',
  ),
];
final List<Product> dairyProducts = [
  Product(
    title: 'White Eggs - 12ct',
    price: '10',
    imagePath: 'assets/images/eggs.png',
  ),
  Product(
    title: 'Organic Valley Half & Half 16oz',
    price: '13',
    imagePath: 'assets/images/milk.png',
  ),
  Product(
    title: 'Culture Pop Ginger Lemon 12oz',
    price: '4.99',
    imagePath: 'assets/images/lemon.png',
  ),
];

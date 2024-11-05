import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [
    Product(
      id: '1',
      name: 'Nike Air Force 1 Retro',
      category: 'Big kids\' shoes',
      price: 27.00,
      imageUrl: 'assets/images/product1.png',
      description: 'A scorching edition to your af1 collection...',
      rating: 4.6,
      features: ['Comfort', 'Durable', 'Adaptive'],
    ),
    Product(
      id: '2',
      name: 'Adidas UltraBoost',
      category: 'Men\'s shoes',
      price: 34.00,
      imageUrl: 'assets/images/product2.png',
      description: 'Stylish and durable running shoes.',
      rating: 4.8,
      features: ['Comfort', 'Durable', 'Lightweight'],
    ),
  ];

  List<Product> get products => [..._products];

  Product findById(String id) => _products.firstWhere((prod) => prod.id == id);
}

import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final double price;
  final Color backgroundColor;
  final int rating;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.backgroundColor,
    required this.rating,
  });
}
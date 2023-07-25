import 'package:flutter/material.dart';
import 'package:pet_shop_ui/models/category.dart';

class Pet {
  final String name;
  final String pet_image;
  final Color bg_color;
  final int age;
  final double weight;
  final String description;

  Pet( {
    required this.age, required this.weight, required this.description,
    required this.name,
    required this.pet_image,
    required this.bg_color,
  });
}

import 'package:flutter/material.dart';
import 'package:pet_shop_ui/models/category.dart';
import 'package:pet_shop_ui/models/pet.dart';

List<Category> categories = [
  Category(
    name: "Cats",
    pets: [
      Pet(
        name: "Fluffy",
        pet_image: "assets/cat1.png",
        bg_color: Colors.orange,
      ),
      Pet(
        name: "Whiskers",
        pet_image: "assets/cat2.png",
        bg_color: Colors.blue,
      ),
      Pet(
        name: "Mittens",
        pet_image: "assets/cat3.png",
        bg_color: Colors.yellow,
      ),
      Pet(
        name: "Salem",
        pet_image: "assets/cat4.png",
        bg_color: Colors.grey,
      ),
      Pet(
        name: "Oscar",
        pet_image: "assets/cat5.png",
        bg_color: Colors.brown,
      ),
    ],
  ),
  Category(
    name: "Dogs",
    pets: [
      Pet(
        name: "Buddy",
        pet_image: "assets/dog1.png",
        bg_color: Colors.green,
      ),
      Pet(
        name: "Max",
        pet_image: "assets/dog2.png",
        bg_color: Colors.purple,
      ),
      Pet(
        name: "Charlie",
        pet_image: "assets/dog3.png",
        bg_color: Colors.red,
      ),
      Pet(
        name: "Lucy",
        pet_image: "assets/dog4.png",
        bg_color: Colors.teal,
      ),
      Pet(
        name: "Rocky",
        pet_image: "assets/dog5.png",
        bg_color: Colors.indigo,
      ),
    ],
  ),
  Category(
    name: "Birds",
    pets: [
      Pet(
        name: "Kiwi",
        pet_image: "assets/bird1.png",
        bg_color: Colors.yellow,
      ),
      Pet(
        name: "Pepper",
        pet_image: "assets/bird2.png",
        bg_color: Colors.green,
      ),
      Pet(
        name: "Sunny",
        pet_image: "assets/bird3.png",
        bg_color: Colors.orange,
      ),
      Pet(
        name: "Ruby",
        pet_image: "assets/bird4.png",
        bg_color: Colors.red,
      ),
      Pet(
        name: "Sky",
        pet_image: "assets/bird5.png",
        bg_color: Colors.blue,
      ),
    ],
  ),
  Category(
    name: "Fish",
    pets: [
      Pet(
        name: "Nemo",
        pet_image: "assets/fish1.png",
        bg_color: Colors.orange,
      ),
      Pet(
        name: "Bubbles",
        pet_image: "assets/fish2.png",
        bg_color: Colors.blue,
      ),
      Pet(
        name: "Finley",
        pet_image: "assets/fish3.png",
        bg_color: Colors.green,
      ),
      Pet(
        name: "Goldie",
        pet_image: "assets/fish4.png",
        bg_color: Colors.yellow,
      ),
      Pet(
        name: "Splash",
        pet_image: "assets/fish5.png",
        bg_color: Colors.cyan
      ),
    ],
  ),
];
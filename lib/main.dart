import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_shop_ui/pages/getstarted.dart';

void main() {
  runApp(const CatAdoptApp());
}

class CatAdoptApp extends StatelessWidget {
  const CatAdoptApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStartedPage(),
    );
  }
}

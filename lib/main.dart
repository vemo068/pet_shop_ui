import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(CatAdoptApp());
}

class CatAdoptApp extends StatelessWidget {
  const CatAdoptApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
    );
  }
}

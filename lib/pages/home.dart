import 'package:flutter/material.dart';
import 'package:pet_shop_ui/styles/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kcmain,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.menu,
                    color: kcblack,
                  ),
                  Icon(
                    Icons.search,
                    color: kcblack,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Discover',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: kcblack,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Find a new pet for you',
                style: TextStyle(
                  fontSize: 18,
                  color: kcblack,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Text("data"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_shop_ui/components/start_grid.dart';
import 'package:pet_shop_ui/controllers/pets_controler.dart';
import 'package:pet_shop_ui/pages/home.dart';
import 'package:pet_shop_ui/styles/colors.dart';
import 'package:slide_to_act/slide_to_act.dart';

class GetStartedPage extends StatelessWidget {
  PetsController petsController = Get.put(PetsController());
   GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcmain,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Center(
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: const StartGrid()),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "PawAdobt",
            style: TextStyle(
              color: kcblack,
              fontSize: 42,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Find your perfect pet companion",
            style: TextStyle(
              color: kcblack,
              fontSize: 18,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: SizedBox(
              child: SlideAction(
                onSubmit: () {
                  Get.to( HomePage());
                },
                sliderRotate: false,
                text: "      Get Started",
                outerColor: kcwhite,
                innerColor: kcblack,
              ),
            ),
          )
        ],
      ),
    );
  }
}

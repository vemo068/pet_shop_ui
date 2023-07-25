import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_shop_ui/controllers/pets_controler.dart';
import 'package:pet_shop_ui/styles/colors.dart';

class AboutContainer extends StatelessWidget {
  AboutContainer({
    Key? key,
  }) : super(key: key);

  final PetsController petsController = Get.find<PetsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: kcblack.withOpacity(0.5),
          borderRadius: BorderRadius.circular(18)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text(
            "About",
            style: TextStyle(
              color: kcwhite,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            petsController.selectedPet!.description,
            softWrap: true,
            style: const TextStyle(
              color: kcwhite,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

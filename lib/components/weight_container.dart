import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_shop_ui/controllers/pets_controler.dart';
import 'package:pet_shop_ui/styles/colors.dart';

class WeightContainer extends StatelessWidget {
  WeightContainer({
    Key? key,
  }) : super(key: key);

  final PetsController petsController = Get.find<PetsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: kcblack.withOpacity(0.5),
          borderRadius: BorderRadius.circular(18)),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, color: kcwhite),
                child: const Icon(
                  Icons.monitor_weight_rounded,
                  color: kcblack,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Expanded(
                child: Text(
                  "Weight",
                  softWrap: true,
                  style: TextStyle(
                      color: kcwhite,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${petsController.selectedPet!.weight}",
                style: const TextStyle(
                  color: kcwhite,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "kgs",
                style: TextStyle(color: kcwhite.withOpacity(0.8), fontSize: 18),
              ),
            ],
          )
        ],
      ),
    );
  }
}

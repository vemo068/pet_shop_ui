import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_shop_ui/controllers/pets_controler.dart';
import 'package:pet_shop_ui/models/dummy_data.dart';
import 'package:pet_shop_ui/styles/colors.dart';

class PetCategoriesList extends StatelessWidget {
  final PetsController petsController = Get.find<PetsController>();
  PetCategoriesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: petsController,
        builder: (_) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            height: 60,
            child: ListView.builder(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(18),
                      onTap: () {
                        petsController.selectPetCategory(categories[index]);
                      },
                      child: Container(
                        width: 80,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 10),
                        decoration: BoxDecoration(
                          color: petsController
                                  .isCategorySelected(categories[index])
                              ? kcwhite
                              : kcblack,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Center(
                          child: Text(
                            categories[index].name,
                            softWrap: true,
                            style: TextStyle(
                              color: petsController
                                      .isCategorySelected(categories[index])
                                  ? kcblack
                                  : kcwhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    )
                  ],
                );
              },
            ),
          );
        });
  }
}

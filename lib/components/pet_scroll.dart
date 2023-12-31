import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_shop_ui/controllers/pets_controler.dart';
import 'package:pet_shop_ui/pages/pet_page.dart';

class PetScroll extends StatelessWidget {
  PetsController petsController = Get.find<PetsController>();
  PetScroll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: petsController,
        builder: (_) {
          return Expanded(
            flex: 5,
            child: Container(
              child: Swiper(
                onTap: (index) {
                  petsController
                      .selectPet(petsController.selectedCategory.pets[index]);
                  Get.to(PetPage());
                },
                indicatorLayout: PageIndicatorLayout.NONE,
                layout: SwiperLayout.TINDER,
                itemWidth: 300.0,
                itemHeight: 400.0,
                itemBuilder: (BuildContext context, int index) {
                  return Hero(
                    tag:
                        '89${petsController.selectedCategory.pets[index].name}',
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: petsController
                              .selectedCategory.pets[index].bg_color),
                      child: Image.asset(
                        petsController.selectedCategory.pets[index].pet_image,
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
                },
                itemCount: petsController.selectedCategory.pets.length,
                pagination:
                    const SwiperPagination(builder: SwiperPagination.rect),
                control: const SwiperControl(color: Colors.transparent),
              ),
            ),
          );
        });
  }
}

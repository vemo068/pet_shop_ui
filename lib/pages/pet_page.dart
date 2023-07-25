import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_shop_ui/components/about_container.dart';
import 'package:pet_shop_ui/components/age_container.dart';
import 'package:pet_shop_ui/components/weight_container.dart';
import 'package:pet_shop_ui/controllers/pets_controler.dart';
import 'package:pet_shop_ui/styles/colors.dart';
import 'package:slide_to_act/slide_to_act.dart';

class PetPage extends StatelessWidget {
  PetsController petsController = Get.find<PetsController>();
  PetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: kcmain,
      body: GetBuilder(
          init: petsController,
          builder: (_) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(petsController.selectedPet!.pet_image),
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRect(
                            child: InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: const Icon(
                                Icons.arrow_back_ios,
                                color: kcblack,
                              ),
                            ),
                          ),
                          Text(
                            petsController.selectedPet!.name,
                            style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: kcblack),
                          ),
                          const SizedBox(
                            width: 1,
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(),
                    ),
                    Expanded(
                      flex: 5,
                      child: Container(
                        child: Column(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: AgeContainer(),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: WeightContainer(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(flex: 2, child: AboutContainer()),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                          color: kcblack.withOpacity(0.9),
                                          shape: BoxShape.circle),
                                      child: const Icon(
                                        Icons.call,
                                        color: kcwhite,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                          color: kcblack.withOpacity(0.9),
                                          shape: BoxShape.circle),
                                      child: const Icon(
                                        Icons.message_rounded,
                                        color: kcwhite,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: SlideAction(
                                        elevation: 0,
                                        outerColor: kcblack.withOpacity(0.9),
                                        sliderButtonIcon: const Icon(
                                          Icons.pets,
                                          color: kcblack,
                                        ),
                                        text: "        Adopting",
                                        textStyle: const TextStyle(
                                            color: kcwhite, fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    ));
  }
}

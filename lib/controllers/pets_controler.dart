import 'package:get/get.dart';
import 'package:pet_shop_ui/models/category.dart';
import 'package:pet_shop_ui/models/dummy_data.dart';

class PetsController extends GetxController {
  PetCategory selectedCategory = categories[0];

  bool isCategorySelected(PetCategory petCategory) {
    return petCategory == selectedCategory ? true : false;
  }

  void selectPetCategory(PetCategory petCategory) {
    selectedCategory = petCategory;
    update();
  }
}

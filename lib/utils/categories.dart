import 'package:food_app/utils/app_constants.dart';
import 'package:food_app/utils/app_images.dart';

class categoriesClass {
  final String item;
  final String svgItem;
  final String id;

  categoriesClass(
      {required this.item, required this.svgItem, required this.id});
}

List<categoriesClass> listCategories = [
  categoriesClass(
      item: "Burger", svgItem: Assets.imagesBurger, id: AppConstants.burger),
  categoriesClass(
      item: "Pizza", svgItem: Assets.imagesPizzaSlice, id: AppConstants.pizza),
  categoriesClass(
      item: "Sandwich",
      svgItem: Assets.imagesSandwish,
      id: AppConstants.sandwish),
  categoriesClass(
      item: "Taco", svgItem: Assets.imagesTaco, id: AppConstants.taco),
  categoriesClass(
      item: "Chicken", svgItem: Assets.imagesChicken, id: AppConstants.chicken),
  categoriesClass(
      item: "drink", svgItem: Assets.imagesDrink, id: AppConstants.drink)
];

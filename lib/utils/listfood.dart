import 'package:food_app/utils/app_constants.dart';
import 'package:food_app/utils/app_images.dart';

class ListFood {
  final String image;
  final String text1;
  final String text2;
  final String price;
  String sizeProduct=listSize[1];
   //double totalPrice;
 final  String id;
   int quantity=1;
   Sized size=Sized.S;
   void increaseTheQuantity(){
    quantity++;
   }
   void decreaseTheQuantity(){
    if(quantity>1){
    quantity--;}
   }
  ListFood(
      {required this.image,
      required this.text1,
      required this.text2,
      required this.price,
      required this.id})
      ;
}
//totalPrice=double.parse(price.split(' ')[1])
List<String> listSize = ["Small", "Medium", "Large", "X-Large"];
enum Sized{S,M,L,XL }
List<ListFood> listFoodItim = [
  ListFood(
      image: Assets.imagesChickenburger,
      text1: "Chicken burgur",
      text2: "200 gr chicken + cheese\nLettuce+ tomato",
      price: "\$ 22.00",
      id: AppConstants.burger),
  ListFood(
      image: Assets.imagesMeet,
      text1: "Chese burgur",
      text2: "200 gr meat + Lettuce\ncheese + onion + tomato + Potatoes",
      price: "\$ 25.00",
      id: AppConstants.burger),
  ListFood(
      image: Assets.imagesNuggets,
      text1: "Nuggets",
      text2: "Potatoes + Tomatoes + ketchup",
      price: "\$ 15.99",id: AppConstants.chicken),
  ListFood(
      image: Assets.imagesPizzaitemone,
      text1: "Pizza",
      text2: " Cheese + Lettuce + Tomato + Onion",
      price: "\$ 25.00",id: AppConstants.pizza),
  ListFood(
      image: Assets.imagesShawarma,
      text1: "Shawarma",
      text2: " Potatoes + Tomatoes + Onion",
      price: "\$ 22.00",id: AppConstants.sandwish),
       ListFood(
      image: Assets.imagesSandwichnewone,
      text1: "Sandwich",
      text2: " pickle + Tomatoes + Onion",
      price: "\$ 12.00",id: AppConstants.sandwish),
       ListFood(
      image: Assets.imagesSandwichnewthree,
      text1: "Sandwich",
      text2: " pickle + Tomatoes + Onion + cheese",
      price: "\$ 12.00",id: AppConstants.sandwish),
  ListFood(
      image: Assets.imagesPizzaProduct,
      text1: "Pizza",
      text2: " Cheese + Lettuce + Tomato + Onion",
      price: "\$ 13.50",id: AppConstants.pizza),
  ListFood(
      image: Assets.imagesCocacola,
      text1: "Cocacola",
      text2: " Soft drink",
      price: "\$ 5.00",id: AppConstants.drink),
   
      ListFood(
      image: Assets.imagesWater,
      text1: "water",
      text2: "  ",
      price: "\$ 3.00",id: AppConstants.drink),
       ListFood(
      image: Assets.imagesJiuci,
      text1: "juice",
      text2: "orange juice",
      price: "\$ 5.00",id: AppConstants.drink),
  ListFood(
      image: Assets.imagesJuice,
      text1: "juice",
      text2: "Strawberry juice",
      price: "\$ 5.00",id: AppConstants.drink),
      ListFood(
      image: Assets.imagesTacoo,
      text1: "Taco",
        text2: "Potatoes + Tomatoes + ketchup",
      price: "\$ 19.99",id: AppConstants.taco),
       ListFood(
      image: Assets.imagesTacotwo,
      text1: "Taco",
        text2: "Potatoes + Tomatoes + ketchup",
      price: "\$ 15.99",id: AppConstants.taco),
];
//List<ListFood> shoopingList = [];
List<ListFood> favoriteList=[];
List<ListFood> cartList=[];
import 'package:flutter/material.dart';
import 'package:food_app/utils/app_styls.dart';

class HomePageHeder extends StatelessWidget {
  const HomePageHeder({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Order Your Food\nFast and Free",
          style: AppStyls.roboto14medium.copyWith(fontSize: 28),
        ),
      const SizedBox(width: 30,),
        Image.asset(
          "assets/images/delivery.png",
          height: 100,
          width: 100,
          fit: BoxFit.contain,
        )
      ],
    );
  }
}




import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/utils/app_styls.dart';
class TopRowInContainerFoodDetailsPage extends StatelessWidget {
  const TopRowInContainerFoodDetailsPage({
    super.key,
    required this.nameProduct,
  });

  final String? nameProduct;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
      nameProduct!,
       style: AppStyls.dmSans18bold.copyWith(fontSize: 24),
     ),
     const Spacer(),
     Row(
       children: [
         SvgPicture.asset(
           "assets/svgs/Star 3.svg",
           height: 24,
           width: 24,
         ),
         SizedBox(width: 4,),
         Text(
           "4.8",
           style: AppStyls.dmSans12Regular
               .copyWith(fontSize: 18),
         ), SizedBox(width: 4,),
         Text(
           "(41 Reviews)",
           style: AppStyls.dmSans12Regular,
         )
       ],
     )
    ],);
  }
}
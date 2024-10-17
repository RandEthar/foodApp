

import 'package:flutter/material.dart';
import 'package:food_app/utils/colors_app.dart';
import 'package:food_app/utils/listfood.dart';

import 'package:food_app/views/widgets/total_price_details_food.dart';

class ColumnTotalPrice extends StatelessWidget {
  const ColumnTotalPrice({
    super.key,
    required this.product,
  });

  final ListFood product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6),
      child: Container(
        width: 120, 
        height: 65,
        padding:const  EdgeInsets.only(top: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
              10), 
          border: Border.all(
            color: ColorsApp
                .orange, 
            width: 2,
          ),
        ),
        child: Column(

          children: [
          const  Text("Total price:"),
            Flexible(
              child: TotalPriceDetailsFood(
                totalprice: double.parse(product.price.toString().split(" ")[1])*product.quantity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

 
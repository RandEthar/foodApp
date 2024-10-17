import 'package:flutter/material.dart';
import 'package:food_app/utils/app_styls.dart';
import 'package:food_app/utils/colors_app.dart';
import 'package:food_app/utils/listfood.dart';

class AddToCardButton extends StatefulWidget {
  final ListFood product;
  const AddToCardButton({super.key, required this.product});

  @override
  State<AddToCardButton> createState() => _AddToCardButtonState();
}

class _AddToCardButtonState extends State<AddToCardButton> {
  @override
  Widget build(BuildContext context) {
    return cartList.contains(widget.product)
        ? ElevatedButton(
            style: ElevatedButton.styleFrom(
               minimumSize: const Size(350, 55),
                backgroundColor: Colors.grey,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            onPressed: null,
            child: Text("Added to card",
                style: AppStyls.dmSans18bold.copyWith(color: Colors.white)))
        : ElevatedButton(
            onPressed: () {
              setState(() {
                cartList.add(widget.product);
              });
            },
            child: Text(
              "Add To Card",
              style: AppStyls.dmSans18bold.copyWith(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(350, 55),
                backgroundColor: ColorsApp.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
          );
  }
}

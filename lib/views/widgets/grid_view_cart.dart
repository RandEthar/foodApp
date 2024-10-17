import 'package:flutter/material.dart';
import 'package:food_app/utils/listfood.dart';
import 'package:food_app/views/widgets/grid_view_cart_item.dart';

class GridViewCart extends StatefulWidget {
  const GridViewCart({super.key});

  @override
  State<GridViewCart> createState() => _GridViewCartState();
}

class _GridViewCartState extends State<GridViewCart> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
    /*  child: GridView.builder(
        shrinkWrap: true, // Set this to true to fix the layout issue
        physics: const NeverScrollableScrollPhysics(), // Use this for better scrolling behavior with SingleChildScrollView
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 16,
         // crossAxisSpacing: 16,
          childAspectRatio: 3 / 1, // Adjust this based on your design
        ),
        itemCount:  favoriteList.length,
        itemBuilder: (context, index) {
          return GridViewCartItem(foodFavorit: favoriteList[index],
          removeItem: () {
            setState(() {
               favoriteList.removeAt(index);
            });
          },); // Ensure the item builder returns the correct widget
        },
      ),*/
    );
  }
}




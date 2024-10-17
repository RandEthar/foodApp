import 'package:flutter/material.dart';

import 'package:food_app/utils/app_styls.dart';
import 'package:food_app/utils/listfood.dart';
import 'package:food_app/views/widgets/contener_grid_view_cart_Item.dart';

class GridViewCartItem extends StatefulWidget {
  final ListFood foodFavorit;
  

  const GridViewCartItem(
      {super.key, required this.foodFavorit});

  @override
  State<GridViewCartItem> createState() => _GridViewCartItemState();
}

class _GridViewCartItemState extends State<GridViewCartItem> {
  int count=0;
  @override
  Widget build(BuildContext context) {
     double pricee=double.parse(widget.foodFavorit.price.toString().split(" ")[1]);
     double totalpricee=count*pricee;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        //margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.12),
              offset: const Offset(0, 1),
              blurRadius: 8,
            ),
          ],
        ),
        child: Row(
          children: [
            SizedBox(
                height: 80,
                width: 100,
                child: Image.asset(widget.foodFavorit.image)),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 22, bottom: 8),
                  child: Text(
                    widget.foodFavorit.text1,
                    style: AppStyls.dmSans18bold,
                  ),
                ),
                Text(
                  ("\$ $totalpricee"),
                  style: AppStyls.dmSans12Regular,
                ),
                const Spacer(),
               /* ContenerGridViewCartItem(
               changedprice: (value) {
                 setState(() {
                   count=value;
                 });
               },
                ),*/
              ],
            ),
            const Spacer(),
         const   InkWell(
             // onTap: widget.removeItem,
              child: const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 16, right: 16),
                  child: Icon(Icons.close),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:food_app/utils/app_styls.dart';
import 'package:food_app/utils/colors_app.dart';
import 'package:food_app/utils/listfood.dart';
import 'package:food_app/views/widgets/grid_view_item_rate_first_row.dart';
import 'package:food_app/views/widgets/pricing_widget.dart';

class GridViewItem extends StatefulWidget {
  ListFood foodItem;
  GridViewItem({super.key, required this.foodItem});

  @override
  State<GridViewItem> createState() => _GridViewItemState();
}

class _GridViewItemState extends State<GridViewItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8),

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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const GridViewItemRateFirstRow(),
            Image.asset(
              widget.foodItem.image,
              height: 80,
            ),
            const SizedBox(
              height: 4,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  widget.foodItem.text1,
                  style: AppStyls.dmSans18bold,
                )),
            const SizedBox(
              height: 4,
            ),
            Text(
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              widget.foodItem.text2,
              style: AppStyls.dmSans12Regular,
            ),
            const Spacer(),
            Row(
              children: [
                PricingWidget(price:widget.foodItem.price,fontsize:18 ,),
                const Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                       if ( favoriteList.contains(widget.foodItem)) {
                     favoriteList.remove(widget.foodItem);
                    } else {
                       favoriteList.add(widget.foodItem);
                    }
                    //log("length shoopingList= ${shoopingList.length}");
                    });
                   
                  },
                  child: CircleAvatar(
                    radius: 14,
                    backgroundColor: ColorsApp.orange,
                    child:  ( favoriteList.contains(widget.foodItem))
                        ?const Icon(Icons.favorite,color: Colors.white,size: 16,)
                        : const Icon(Icons.favorite_border,color: Colors.white),
                  ),
                )
              ],
            ),
            // const SizedBox(height: 4,)
          ],
        ),
      ),
    );
  }
}

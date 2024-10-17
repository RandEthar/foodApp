import 'package:flutter/material.dart';
import 'package:food_app/utils/listfood.dart';

import 'package:food_app/views/widgets/svg_custom_app_bar_details.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppBarDetails extends StatefulWidget {
  final ListFood product;
  const CustomAppBarDetails({super.key, required this.product});

  @override
  State<CustomAppBarDetails> createState() => _CustomAppBarDetailsState();
}

class _CustomAppBarDetailsState extends State<CustomAppBarDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgCustomAppBarDetails(
            svgpath: "assets/svgs/Arrow - Left 2.svg",
            onTap: () {
              Navigator.pop(context);
            },
          ),
          SvgCustomAppBarDetails(
            icon: favoriteList.contains(widget.product)
                ? Iconsax.heart5
                : Iconsax.heart,
            onTap: () {
              setState(() {
                if (favoriteList.contains(widget.product)) {
                  favoriteList.remove(widget.product);
                } else {
                  favoriteList.add(widget.product);
                }
              });
            },isFav: favoriteList.contains(widget.product),
          ),
        ],
      ),
    );
  }
}

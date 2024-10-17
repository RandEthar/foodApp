


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/utils/app_styls.dart';

class GridViewItemRateFirstRow extends StatelessWidget {
  const GridViewItemRateFirstRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        
      padding: const EdgeInsets.only(top:10),
      child: Row(
        children: [
          SvgPicture.asset(
            "assets/svgs/Star 3.svg",
            height: 16,
            width: 16,
          ),const SizedBox(width: 4,),
          Text("4.5", style: AppStyls.dmSans12Regular)
        ],
      ),
    );
  }
}
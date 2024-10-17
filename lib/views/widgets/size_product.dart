

import 'package:flutter/material.dart';
import 'package:food_app/utils/app_styls.dart';
import 'package:food_app/utils/colors_app.dart';

class SizeProduct extends StatelessWidget {
  final String title;
  final bool isSelected;
  const SizeProduct({super.key, required this.title, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      radius: 30,
      backgroundColor: ColorsApp.orange,
        child: CircleAvatar(
          radius: 28,
          backgroundColor:isSelected?ColorsApp.orange:ColorsApp.offwight,
          child: Text(title,style:AppStyls.dmSans18bold.copyWith(color:
          isSelected?ColorsApp.offwight:Colors.orange,
          fontSize: 24),),
        ),
    );
  }
}
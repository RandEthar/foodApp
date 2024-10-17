


import 'package:flutter/material.dart';
import 'package:food_app/utils/colors_app.dart';

class RemoveAddFoodDetails extends StatelessWidget {
  final Widget icon;
  final void Function()?onTap;
  const RemoveAddFoodDetails({
    super.key, required this.icon,required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 36,
        width: 36,
        decoration: BoxDecoration(
          color: ColorsApp.orange,
          borderRadius: BorderRadius.circular(20),
        ),
        child: icon,
      ),
    );
  }
}
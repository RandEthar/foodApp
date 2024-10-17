

import 'package:flutter/material.dart';
import 'package:food_app/utils/app_styls.dart';

class TotalPriceDetailsFood extends StatelessWidget {
  const TotalPriceDetailsFood({
    super.key,
    required this.totalprice,
  });

  final double totalprice;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        
        children: [
          TextSpan(
            text: "\$ ${totalprice.toStringAsFixed(2).split('.')[0]}",
            style: AppStyls.dmSans18bold.copyWith(
                color: Colors.orange, fontSize: 24), // زيادة حجم الخط
          ),
          TextSpan(
            text: '.',
            style: AppStyls.dmSans18bold.copyWith(color: Colors.orange),
          ),
          TextSpan(
            text: totalprice.toStringAsFixed(2).split('.')[1],
            style: AppStyls.dmSans12Regular.copyWith(
                color: Colors.orange, fontSize: 20), // زيادة حجم الخط
          ),
        ],
      ),
    );
  }
}

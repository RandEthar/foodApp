

import 'package:flutter/material.dart';
import 'package:food_app/utils/app_styls.dart';

class PricingWidget extends StatelessWidget {
  final String price;
  final double fontsize;
  const PricingWidget({super.key, required this.price, required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: price.split('.')[0],
                    style: AppStyls.dmSans18bold.copyWith(color: Colors.orange,fontSize: fontsize),
                  ),
                  TextSpan(
                    text: '.',
                    style: AppStyls.dmSans18bold.copyWith(color: Colors.orange),
                  ),
                  TextSpan(
                      text: price.split('.')[1],
                      style: AppStyls.dmSans12Regular
                          .copyWith(color: Colors.orange,fontSize: fontsize-6))
                ]));
  }
}
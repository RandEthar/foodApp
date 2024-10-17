import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/utils/app_styls.dart';
import 'package:food_app/utils/colors_app.dart';
import 'package:food_app/utils/listfood.dart';

class DropdownMenuSize extends StatefulWidget {
  final ListFood product;
  const DropdownMenuSize({super.key, required this.product});

  @override
  State<DropdownMenuSize> createState() => _DropdownMenuSizeState();
}

class _DropdownMenuSizeState extends State<DropdownMenuSize> {
 late String isSelectedSize = widget.product.sizeProduct; // الخيار الافتراضي هو Medium
 // List<String> size = ["Small", "Medium", "Large", "X-Large"];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 65,
      padding: EdgeInsets.all( 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10), 
        border: Border.all(
          color: ColorsApp.orange,
          width: 2, 
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Size",
                style: AppStyls.dmSans24medium.copyWith(
                  fontSize: 14,
                  color: ColorsApp.orange,
                ),
              ),
              SvgPicture.asset(
                "assets/svgs/Arrow - Down 2.svg",
                color: ColorsApp.orange,
              ),
            ],
          ),
        const  SizedBox(height:2),
          Expanded(

            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                icon: Icon(null),
              //  isExpanded: true,
                borderRadius: BorderRadius.circular(10),
                value: isSelectedSize,
                items: listSize 
                    .map((val) => DropdownMenuItem<String>(
                          value: val,
                          child: Text(
                          val,
                            style: AppStyls.dmSans24medium.copyWith(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ))
                    .toList(),
                onChanged: (newValue) {
                   widget.product.sizeProduct=newValue!;
                  setState(() {
                 
                    isSelectedSize = newValue;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}



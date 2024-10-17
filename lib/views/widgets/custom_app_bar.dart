

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/utils/app_styls.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(children: [
          SvgPicture.asset('assets/svgs/Location.svg',height: 24,width: 24,),
          const SizedBox(width: 8,),
          Text("Tulkarm, PS",style: AppStyls.roboto14medium.copyWith(
           fontSize: 16
          ),), const SizedBox(width: 8,),
          SvgPicture.asset("assets/svgs/Arrow - Down 2.svg",height: 24,width: 24)
      
      ],),
    );
  }
}
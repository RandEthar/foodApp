



import 'package:flutter/material.dart';
import 'package:food_app/utils/colors_app.dart';

class CustomIndecator extends StatelessWidget {
  const CustomIndecator({super.key});

  @override
 
  Widget build(BuildContext context) {
     int index=0;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
    children:List.generate(5,(val){
      return Padding(
        padding: const EdgeInsets.only(right: 7),
        child: CustomCircle(isSelected: val==index,),
      );
    }
    )



    );
  }
}



class CustomCircle extends StatelessWidget {
  final bool isSelected;
  const CustomCircle({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16,width: 16,
     decoration:  BoxDecoration(
        color: isSelected?ColorsApp.orange:Colors.white,
       borderRadius: BorderRadius.circular(8)
     ),






    );
  }
}
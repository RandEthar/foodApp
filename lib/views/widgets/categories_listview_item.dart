


import 'package:flutter/material.dart';
import 'package:food_app/utils/app_styls.dart';
import 'package:food_app/utils/categories.dart';
import 'package:food_app/utils/colors_app.dart';

class CategoriesListViewItem extends StatefulWidget {
   final  categoriesClass categoriesItem;
   bool isSelected;
   CategoriesListViewItem({super.key,required this.categoriesItem,required this.isSelected});
 

  @override
  State<CategoriesListViewItem> createState() => _CategoriesListViewItemState();
}

class _CategoriesListViewItemState extends State<CategoriesListViewItem> {
  
    
  @override
  Widget build(BuildContext context) {
    return  AnimatedContainer(
      duration:const  Duration(milliseconds: 300),
    height: 40,
      decoration: BoxDecoration(
            color: widget.isSelected?Colors.orange:Colors.white,
          border: Border.all(
            width: 1.5,
            color: ColorsApp.orange
            ,
          ),
         boxShadow: [BoxShadow(
     color: Colors.black.withOpacity(0.25),
      blurRadius: 4,spreadRadius: 0,
      offset: const Offset(0, 4)

  )],

          borderRadius:const BorderRadius.all(
            
            Radius.circular(10))
    
      ),
      
      child:  Padding(
        padding: const EdgeInsets.only(left: 8,right: 20),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width:24,height: 24,child:   Image.asset(widget.categoriesItem.svgItem)),
           const SizedBox(width: 8,),
            Text(widget.categoriesItem.item,
            style: AppStyls.dmSans18bold.copyWith(color:widget.isSelected? Colors.white:Colors.black))
          ],
        ),
      ),
    );
  }
}
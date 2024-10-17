

import 'package:flutter/material.dart';
import 'package:food_app/utils/colors_app.dart';
import 'package:food_app/utils/listfood.dart';

import 'package:food_app/views/widgets/remove_add_food_details.dart';

class CounterDetailsProduct extends StatefulWidget {
  final  ListFood product;
   final VoidCallback onQuantityChanged;
 const CounterDetailsProduct({super.key, required this.product, required this.onQuantityChanged});

  @override
  State<CounterDetailsProduct> createState() => _CounterDetailsProductState();
}

class _CounterDetailsProductState extends State<CounterDetailsProduct> {

  @override


  Widget build(BuildContext context) {
    return  Container(
      height: 40,
      width: 118,
      decoration: BoxDecoration(
        color: ColorsApp.offwight,
        borderRadius: BorderRadius.circular(26),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: Row(
        
          children: [
        
             RemoveAddFoodDetails(onTap:() {
              setState(() {
              widget.product.decreaseTheQuantity();
             widget.onQuantityChanged();
             
              });
            },icon:const Icon(Icons.remove,color: Colors.white,),),
            
      const  Spacer(),
        Text(
            widget.product.quantity.toString()   ,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
        
          const Spacer(),
            RemoveAddFoodDetails(onTap: () {
              setState(() {
                     widget.product.increaseTheQuantity();
             widget.onQuantityChanged();
              });
           
           },icon: const Icon(Icons.add,color: Colors.white,),),
          ],
        ),
      ),
    );
  }
}


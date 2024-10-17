

 import 'package:flutter/material.dart';
import 'package:food_app/utils/listfood.dart';

class ProductDetailsImage extends StatelessWidget {
  const ProductDetailsImage({
    super.key,
    required this.product,
  });

  final ListFood? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:57 ,right:57),
      child: SizedBox(height:210 ,width:262 ,
      child: Image.asset(product!.image,
      fit: BoxFit.fill,),),
    );
  }
}

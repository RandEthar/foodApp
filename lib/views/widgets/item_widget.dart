import 'package:flutter/material.dart';
import 'package:food_app/utils/listfood.dart';
import 'package:food_app/views/pages/product_details_page.dart';

import 'package:food_app/views/widgets/grid_view_item.dart';

class ItemWidget extends StatefulWidget {
  const ItemWidget({super.key, required this.product});
  final List<ListFood>product;

  @override
  State<ItemWidget> createState() => _ItemWidgetState();
}

class _ItemWidgetState extends State<ItemWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
     mainAxisSpacing: 16,crossAxisSpacing: 16,
        crossAxisCount: 2,
        childAspectRatio: 155/207),
    itemCount: widget.product.length,
    itemBuilder:(context,index){
         return InkWell(
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder:(context){
              return  ProductDetailsPage(product:widget.product[index] );
            }) ).then((value){
              setState(() {
                
              });
            });
          },
          child: GridViewItem(foodItem:widget.product[index] ,));
    });
  }
}


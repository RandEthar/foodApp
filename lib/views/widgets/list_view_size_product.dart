



import 'package:flutter/material.dart';
import 'package:food_app/utils/listfood.dart';
import 'package:food_app/views/widgets/size_product.dart';

class ListViewSizeProduct extends StatefulWidget {
  final ListFood product;
  const ListViewSizeProduct({
    super.key, required this.product,
  });

  @override
  State<ListViewSizeProduct> createState() => _ListViewSizeProductState();
}

class _ListViewSizeProductState extends State<ListViewSizeProduct> {
  @override
  int currindex=-1;

  Widget build(BuildContext context) {
    
    return SizedBox(
      height: 30*2,
      child: ListView.builder(
       scrollDirection: Axis.horizontal,
        itemCount:Sized.values.length,
       
       itemBuilder: (context,index){
        return  Padding(
          padding:  const EdgeInsets.only(right: 8),
          child: InkWell(
            onTap: (){
              widget.product.size=Sized.values[index];
              setState(() {
                currindex=index;
              });
            },
            child: SizeProduct(title: Sized.values[index].toString().split('.')[1]
            ,isSelected:currindex==index ,)),
        );
      
       }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_app/utils/listfood.dart';
import 'package:food_app/views/widgets/counter_details_product.dart';
import 'package:food_app/views/widgets/pricing_widget.dart';






class RowPriceDetailsProduct extends StatefulWidget {
  final VoidCallback totalQuantityChanged;
  final ListFood product;

  const RowPriceDetailsProduct({
    super.key, 
    required this.product, 
    required this.totalQuantityChanged
  });

  @override
  State<RowPriceDetailsProduct> createState() => _RowPriceDetailsProductState();
}

class _RowPriceDetailsProductState extends State<RowPriceDetailsProduct> {
 /* late double price;

  @override
  void initState() {
    super.initState();
    price = double.parse(widget.product.price.toString().split(" ")[1]);
  }*/

  void funtotalprice() {
    setState(() {
 
      //widget.product.totalPrice = widget.product.quantity * price;
  
      widget.totalQuantityChanged();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      
        PricingWidget(
          price: widget.product.price.toString(), 
          fontsize: 28,
        ),
        const Spacer(),
     
        CounterDetailsProduct(
          product: widget.product,
          onQuantityChanged: funtotalprice, // تحديث السعر عند تغيير الكمية
        ),
      ],
    );
  }
}

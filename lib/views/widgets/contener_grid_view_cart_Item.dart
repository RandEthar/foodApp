import 'package:flutter/material.dart';
import 'package:food_app/utils/app_styls.dart';
import 'package:food_app/utils/colors_app.dart';
import 'package:food_app/utils/listfood.dart';

class ContenerGridViewCartItem extends StatefulWidget {
  final ListFood product;
  final double height;
  final double width;
  final Function(bool changeQuantity) funchange;
  const ContenerGridViewCartItem({
    super.key,
    required this.funchange,
    required this.product,
    this.height=118,
     this.width=40,
  });

  @override
  State<ContenerGridViewCartItem> createState() =>
      _ContenerGridViewCartItemState();
}

class _ContenerGridViewCartItemState extends State<ContenerGridViewCartItem> {
  // Color(0xffFFF1E5)
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Container(
        height: widget.height, 
        width:widget.width,
        decoration: const BoxDecoration(
          color: Color(0xffFFF1E5),
          borderRadius: BorderRadius.all(Radius.circular(26)),
        ),

        child: Row(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  widget.product.quantity++;
                  widget.funchange(true);
                });
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  radius: 10, // CircleAvatar radius
                  backgroundColor: ColorsApp.orange,
                  child: Icon(
                    Icons.add,
                    size: 16, // Adjust the icon size
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Text(
              "${widget.product.quantity}",
              style: AppStyls.roboto14medium.copyWith(
               fontSize: 16
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                setState(() {
                  if (widget.product.quantity > 1) {
                    widget.product.quantity--;
                    widget.funchange(true);
                  }
                });
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 10),
                child: CircleAvatar(
                  radius: 10, // CircleAvatar radius
                  backgroundColor: ColorsApp.orange,
                  child: Icon(
                    Icons.remove,
                    size: 16, // Adjust the icon size
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

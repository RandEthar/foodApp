import 'package:flutter/material.dart';
import 'package:food_app/utils/app_styls.dart';
import 'package:food_app/utils/colors_app.dart';
import 'package:food_app/utils/listfood.dart';
import 'package:food_app/views/widgets/contener_grid_view_cart_Item.dart';

class CartListViewItem extends StatefulWidget {
  final ListFood product;
  final Function(bool changeQuantity) funChangeQuantity;
  final Function funRemove;
  const CartListViewItem(
      {super.key,
      required this.product,
      required this.funChangeQuantity,
      required this.funRemove});

  @override
  State<CartListViewItem> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CartListViewItem> {
  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(widget.product.id),
      direction: DismissDirection.endToStart,
      background: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.red,
        ),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(right: 20),
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: const Icon(
          Icons.delete,
          color: Colors.white,
          size: 40,
        ),
      ),
      onDismissed: (direction) {
        widget.funRemove();
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Container(
          padding: const EdgeInsets.all(10),
         height:122,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.orange.withOpacity(0.5),
                    blurRadius: 1.3,
                    spreadRadius: 1,
                    offset: Offset(0, 2))
              ],
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: ColorsApp.orange, width: 2)),
          child: Row(
            children: [
              Image.asset(
                widget.product.image,
                height: 100,
                width: 100,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      widget.product.text1,
                      style: AppStyls.dmSans18bold.copyWith(fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Size: ",
                        style: AppStyls.dmSans18bold
                            .copyWith(color: Colors.grey, fontSize: 14)),
                    TextSpan(
                        text: widget.product.sizeProduct,
                        style: AppStyls.roboto14medium
                            .copyWith(color: Colors.black, fontSize: 14)),
                  ])),
                  const SizedBox(
                    height: 5,
                  ),
                  ContenerGridViewCartItem(
                      width: 90,
                      height: 30,
                      product: widget.product,
                      funchange: (chick) {
                        widget.funChangeQuantity(chick);
                      })
                ],
              ),
                const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.product.price,
                      style: AppStyls.dmSans12Regular
                          .copyWith(fontSize: 16, color: ColorsApp.orange),
                    ),
                    Flexible(
                      child: Text(
                        "\$ ${((double.parse(widget.product.price.split(" ")[1])) * widget.product.quantity).toStringAsFixed(2)}",
                        style: AppStyls.dmSans12Regular
                            .copyWith(fontSize: 16, color: ColorsApp.orange),
                        overflow:
                            TextOverflow.ellipsis, 
                      ),
                    ),
                  ],
                ),
              )
              /* const Spacer(),
                            const Icon(
                              Icons.delete,
                              size: 30,
                              color: ColorsApp.orange,
                            )*/
            ],
          ),
        ),
      ),
    );
  }
}

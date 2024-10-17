import 'package:flutter/material.dart';

import 'package:food_app/utils/app_styls.dart';
import 'package:food_app/utils/colors_app.dart';
import 'package:food_app/utils/listfood.dart';
import 'package:food_app/views/pages/product_details_page.dart';
import 'package:food_app/views/widgets/cart_list_view_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    double subtotal = cartList.fold(0, (previousValue, element) {
      return previousValue +
          ((double.parse(element.price.split(" ")[1])) * element.quantity);
    });
    double shipping = 4.00;
    double totalAmount = subtotal -( subtotal*(shipping /100)); 

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "My Cart",
                  style: AppStyls.dmSans18bold
                      .copyWith(color: ColorsApp.orange, fontSize: 24),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: cartList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:(context){
                        return ProductDetailsPage(product:cartList[index] ,);
                      }));
                    },
                    child: CartListViewItem(
                      funRemove: (){
                        setState(() {
                          cartList.removeAt(index);
                        });
                      },
                      funChangeQuantity: (changeQuantity) {
                        setState(() {});
                      },
                      product: cartList[index],
                    ),
                  );
                },
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              child: AnimatedContainer(
                padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
                curve: Curves.easeInOutBack,
                height: isExpanded ? 250 : 100,
                duration: const Duration(milliseconds: 500),
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0, -2),
                        blurRadius: 4,
                      )
                    ]),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 4,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Subtotal",
                              style: AppStyls.roboto14medium
                                  .copyWith(color: Colors.grey, fontSize: 16)),
                          Text("\$ ${subtotal.toStringAsFixed(2)}")
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Shipping",
                              style: AppStyls.roboto14medium
                                  .copyWith(color: Colors.grey, fontSize: 16)),
                          Text("\$ ${shipping.toStringAsFixed(2)}")
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: List.generate(20, (index) {
                          return Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: index == 0 ? 0 : 4,
                                  right: index == 19 ? 0 : 4),
                              child: const Divider(thickness: 1.5),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Amount",
                              style: AppStyls.roboto14medium
                                  .copyWith(color: Colors.black, fontSize: 16)),
                          Text("\$ ${totalAmount.toStringAsFixed(2)}",
                              style: AppStyls.roboto14medium
                                  .copyWith(color: Colors.black, fontSize: 16)),
                        ],
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            minimumSize: const Size(double.infinity, 50),
                            backgroundColor: ColorsApp.orange),
                        onPressed: () {},
                        child: Text("Checkout",
                            style: AppStyls.dmSans18bold
                                .copyWith(color: Colors.white, fontSize: 20)),
                      ),
                      Icon(
                        isExpanded
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_up,
                        size: 30,
                      )
                    ],
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

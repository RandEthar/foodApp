import 'package:flutter/material.dart';
import 'package:food_app/utils/app_styls.dart';

import 'package:food_app/utils/colors_app.dart';
import 'package:food_app/utils/listfood.dart';
import 'package:food_app/views/widgets/add_to_card_button.dart';
import 'package:food_app/views/widgets/column_totul_price.dart';
import 'package:food_app/views/widgets/custom_Indecator.dart';

import 'package:food_app/views/widgets/custom_app_bar_details.dart';
import 'package:food_app/views/widgets/dropdown_menu.dart';
import 'package:food_app/views/widgets/product_details_image.dart';
import 'package:food_app/views/widgets/row_price_details_product.dart';

import 'package:food_app/views/widgets/top_row_in_details_food_page.dart';

class ProductDetailsPage extends StatefulWidget {
  final ListFood product;

  const ProductDetailsPage({super.key, required this.product});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.offwight,
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBarDetails(
              product: widget.product,
            ),
            ProductDetailsImage(product: widget.product),
          const   CustomIndecator(),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 24, right: 24, top: 24),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopRowInContainerFoodDetailsPage(
                            nameProduct: widget.product.text1),
                        const SizedBox(height: 20),
                        RowPriceDetailsProduct(
                          product: widget.product,
                          totalQuantityChanged: () {
                            setState(() {
                             // widget.product.totalPrice = double.parse(
                                   //   widget.product.price.split(" ")[1]) *
                                 // widget.product.quantity;
                            });
                          },
                        ),
                       const SizedBox(height: 32),
                       /* Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            "Choose Size:",
                            style: AppStyls.dmSans18bold,
                          ),
                        ),*/
                        Row(
                          children: [
                            DropdownMenuSize(product: widget.product,),
                           const  SizedBox(width: 23,),
                              ColumnTotalPrice(product: widget.product,),
                          ],
                        ),
                        // ListViewSizeProduct(product: widget.product),
                        const SizedBox(height: 20),
                        Text(
                          "About",
                          style: AppStyls.dmSans24medium.copyWith(fontSize: 18),
                        ),
                        const SizedBox(height:16),
                        Text(
                          "Crispy seasoned chicken breast, topped with mandatory melted cheese and piled onto soft rolls with onion, avocado, lettuce, tomato and garlic mayo.",
                          style:
                              AppStyls.dmSans12Regular.copyWith(fontSize: 14),
                          maxLines: 3,
                        ),
                        Text(
                          "(if ordered).",
                          style: AppStyls.dmSans12Regular
                              .copyWith(fontSize: 14, color: Color(0xffABABAB)),
                        ),
                          SizedBox(height: 100,),

                        Row(
                          children: [
                            Expanded(flex: 2,
                              child: AddToCardButton(product: widget.product)),
                          ],
                        ),
                      ],
                    ),
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


import 'package:flutter/material.dart';
import 'package:food_app/utils/app_styls.dart';
import 'package:food_app/utils/colors_app.dart';
import 'package:food_app/utils/listfood.dart';
import 'package:food_app/views/pages/product_details_page.dart';

class FavoriteListViewItem extends StatefulWidget {
  final ListFood product;
  final Function(bool changeremove)funremove;
  const FavoriteListViewItem({super.key, required this.product, required this.funremove});

  @override
  State<FavoriteListViewItem> createState() => _FavoriteListViewItemState();
}

class _FavoriteListViewItemState extends State<FavoriteListViewItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ProductDetailsPage(
                product: widget.product,
              );
            })).then((value) {
              setState(() {});
            });
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: ColorsApp.orange, width: 2)),
            child: Row(
              children: [
                Image.asset(widget.product.image),
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
                        style: AppStyls.dmSans12Regular.copyWith(fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                       widget.product.price,
                        style: AppStyls.dmSans12Regular
                            .copyWith(fontSize: 16, color: ColorsApp.orange),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    widget.funremove(true);
                  },
                  child: const Icon(
                    Icons.delete,
                    size: 30,
                    color: ColorsApp.orange,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        )
      ],
    );
  }
}

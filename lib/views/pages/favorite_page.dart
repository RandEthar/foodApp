import 'package:flutter/material.dart';
import 'package:food_app/utils/app_styls.dart';
import 'package:food_app/utils/listfood.dart';
import 'package:food_app/views/widgets/favorite_list_view_item.dart';
import 'package:food_app/views/widgets/favorite_page_header.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const  FavoriteScreenHeader(),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Favorite Items",
                  style: AppStyls.dmSans18bold
                      .copyWith(color: Colors.black, fontSize: 24),
                ),
                const SizedBox(
                  height: 16,
                ),
             favoriteList.length!=0?   ListView.builder(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return FavoriteListViewItem(product:favoriteList[index] 
                    ,funremove: (changeremove) {
                      setState(() {
                      favoriteList.remove(favoriteList[index] );
                      });
                    },);
                  },
                  itemCount: favoriteList.length,
                  shrinkWrap: true,
                  physics:
                      const ClampingScrollPhysics(), 
                ): Column(
                  children: [
                    SizedBox(height: 150,),
                    Center(
                      child: Text(
                        "Add Your Favorite Items",
                        style: AppStyls.dmSans12Regular
                            .copyWith(color: Colors.grey, fontSize: 24),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}


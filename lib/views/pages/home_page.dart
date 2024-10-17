import 'package:flutter/material.dart';
import 'package:food_app/utils/app_constants.dart';
import 'package:food_app/utils/listfood.dart';


import 'package:food_app/views/widgets/categories_listview.dart';

import 'package:food_app/views/widgets/categories_page.dart';
import 'package:food_app/views/widgets/custom_app_bar.dart';
import 'package:food_app/views/widgets/home_page_heder.dart';
import 'package:food_app/views/widgets/item_widget.dart';
import 'package:food_app/views/widgets/search_and_filter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<ListFood> filterListFood;

  @override
  void initState() {
    super.initState();
    filterListFood = listFoodItim.where((vall) {
      return vall.id == AppConstants.burger;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return   

    
        SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              const SizedBox(
                height: 20,
              ),
              const HomePageHeder(),
              const SizedBox(
                height: 20,
              ),
              const SearchAndFilter(),
              const SizedBox(
                height: 36,
              ),
              const Categories(),
              const SizedBox(
                height: 16,
              ),
              CategoriesListview(funCategoriesClass: (category) {
                setState(() {
                  if (category == null) {
                    filterListFood = listFoodItim;
                  } else {
                    filterListFood = listFoodItim.where((val) {
                      return val.id == category.id;
                    }).toList();
                  }
                });
              }),
              const SizedBox(
                height: 24,
              ),
              ItemWidget(
                product: filterListFood,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

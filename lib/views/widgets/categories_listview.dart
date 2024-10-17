import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:food_app/utils/categories.dart';
import 'package:food_app/views/widgets/categories_listview_item.dart';

class CategoriesListview extends StatefulWidget {
  const CategoriesListview({super.key, required this.funCategoriesClass});
    final Function(categoriesClass?) funCategoriesClass;
  @override
  State<CategoriesListview> createState() => _CategoriesListviewState();
}

class _CategoriesListviewState extends State<CategoriesListview> {
  int currentSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: listCategories.length,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 12),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        
                        if(index==currentSelectedIndex){
                          currentSelectedIndex=-1;
                               widget.funCategoriesClass(null);
                           return;
                        }
                           currentSelectedIndex = index;
                              widget.funCategoriesClass(listCategories[index]);
                        }
                      
                    
                      );
                    },
                    child: CategoriesListViewItem(
                      categoriesItem: listCategories[index],
                      isSelected: currentSelectedIndex==index,
                    )),
              )),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:food_app/utils/app_styls.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2),
      child: Row(
        children: [
          Text("Categories",
          style:
             AppStyls.roboto14medium.copyWith(fontSize: 26),
          ),
        ],
      ),
    );
  }
}


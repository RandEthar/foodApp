import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/utils/app_styls.dart';
import 'package:food_app/utils/colors_app.dart';
import 'package:iconsax/iconsax.dart';

class SearchAndFilter extends StatelessWidget {
  const SearchAndFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25), // لون الظل مع الشفافية
                  spreadRadius: 0, // انتشار الظل
                  blurRadius: 4, // مقدار الضبابية
                  offset: const Offset(0, 4), // الإزاحة (x: 0, y: 3)
                ),
              ],
            ),
            child: TextField(
              cursorColor: ColorsApp.orange,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Search",
                hintStyle: AppStyls.roboto12medium.copyWith(
                  fontSize: 18,
                  color: ColorsApp.gray,
                ),
                prefixIcon: const Icon(Iconsax.search_normal_1),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: ColorsApp.orange),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: ColorsApp.gray),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Container(
          width: 48,
          height: 48,
         
          decoration: BoxDecoration(
            color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: ColorsApp.orange),
              boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 4),
                    blurRadius: 4,
                    color: Colors.black.withOpacity(0.25)),
              ]), child: Center(child: SvgPicture.asset("assets/svgs/Filter.svg")),
        ),
      ],
    );
  }
}

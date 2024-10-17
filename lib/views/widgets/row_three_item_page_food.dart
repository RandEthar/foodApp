import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/utils/app_styls.dart';
import 'package:food_app/utils/colors_app.dart';

class RowThreeItemPageFood extends StatelessWidget {
  const RowThreeItemPageFood({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 93,
          height: 65,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              border: Border.all(color: Colors.orange)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "size",
                      style: AppStyls.roboto14medium
                          .copyWith(color: ColorsApp.orange),
                    ),
                    Spacer(),
                    SvgPicture.asset("assets/svgs/Arrow - Down 2.svg",
                        height: 16, width: 16)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: Text("Medium",
                      style: AppStyls.dmSans24medium.copyWith(fontSize: 18)),
                )
              ],
            ),
          ),
        ),
       const  SizedBox(
          width:30,
        ),
        Container(
  width: 100,
  height: 65,
  decoration: BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(10)),
    color: Colors.white,
    border: Border.all(color: Colors.orange),
  ),
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start, // المحاذاة من الجهة اليسرى
      children: [
        Text(
          "Energy",
          style: AppStyls.roboto14medium.copyWith(color: ColorsApp.orange),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: Text(
            "554 KCal",
            style: AppStyls.dmSans24medium.copyWith(fontSize: 18),
          ),
        ),
      ],
    ),
  ),
)
,
       const  SizedBox(
          width:30,
        ),
         Container(
  width: 93,
  height: 65,
  decoration: BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(10)),
    color: Colors.white,
    border: Border.all(color: Colors.orange),
  ),
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start, // المحاذاة من الجهة اليسرى
      children: [
        Text(
          "Delivery",
          style: AppStyls.roboto14medium.copyWith(color: ColorsApp.orange),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: Text(
            "45 min",
            style: AppStyls.dmSans24medium.copyWith(fontSize: 18),
          ),
        ),
      ],
    ),
  ),
)


      ],
    );
  }
}

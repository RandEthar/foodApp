



import 'package:flutter/material.dart';
import 'package:food_app/utils/app_images.dart';
import 'package:food_app/utils/app_styls.dart';
import 'package:food_app/utils/colors_app.dart';

class FavoriteScreenHeader extends StatelessWidget {
  const FavoriteScreenHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: const BoxDecoration(
              color: ColorsApp.orange,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mr.Burger",
                    style: AppStyls.dmSans18bold.copyWith(
                        fontSize: 46,
                        letterSpacing: 1.5,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Comming Soon ...",
                      style: AppStyls.dmSans24medium
                          .copyWith(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Best Seller",
                      style: AppStyls.dmSans24medium
                          .copyWith(color: Colors.black, fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          bottom: -100,
          child: Image.asset(Assets.imagesFavBurger,
              height: MediaQuery.of(context).size.height * 0.4),
        )
      ],
    );
  }
}

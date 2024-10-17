
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/utils/colors_app.dart';

class SvgCustomAppBarDetails extends StatelessWidget {
  final String? svgpath;
  final void Function()? onTap;
  final IconData? icon;
      final bool isFav;
  const SvgCustomAppBarDetails({
    super.key,
    this.svgpath,
    this.onTap,
    this.icon,  this.isFav=false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 45,width: 45,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: const Color(0xff0D0D0D),
            width: 1.4,
          ),
        ),
        child: svgpath != null
            ? SvgPicture.asset(
                svgpath!,
               height: 24,
            width: 24,
              )
            : Icon(
                icon,
                size: 24,
                color:isFav? ColorsApp.orange:Colors.black,
              ),
      ),
    );
  }
}

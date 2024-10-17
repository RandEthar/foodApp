import 'package:flutter/material.dart';
import 'package:food_app/utils/app_styls.dart';
import 'package:food_app/utils/colors_app.dart';
import 'package:food_app/views/pages/cart_page.dart';
import 'package:food_app/views/pages/favorite_page.dart';
import 'package:food_app/views/pages/home_page.dart';


import 'package:iconsax/iconsax.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;
  List<Widget> pages = const [
    HomePage(),
   FavoritePage(),
    CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 15,
              offset: const Offset(0, -3),
            ),
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: NavigationBarTheme(
            data: NavigationBarThemeData(
                labelTextStyle:
                    WidgetStatePropertyAll(AppStyls.roboto12medium)),
            child: NavigationBar(destinations: const [
              NavigationDestination(icon: Icon(Iconsax.home), label: "home"),
              NavigationDestination(
                  icon: Icon(Iconsax.heart), label: " favorite"),
              NavigationDestination(icon: Icon(Iconsax.shopping_cart), label: "Cart"),
            ],
            indicatorColor: ColorsApp.orange,
            backgroundColor:Colors.white ,
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,//!labl icon بظهر بس نضغط عليها فقط
                 height:(MediaQuery.of(context).size.height)*0.08,
                
                 onDestinationSelected: (value) =>setState(() {
                   selectedIndex=value;
                 }), selectedIndex: selectedIndex,
                     overlayColor: WidgetStatePropertyAll(ColorsApp.orange,),
            ),
          ),
        ),
      ),
    );
  }
}

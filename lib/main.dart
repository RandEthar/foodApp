import 'package:flutter/material.dart';
import 'package:food_app/views/pages/boarding_page.dart';
import 'package:food_app/views/pages/nav_bar.dart';

void main() {
  runApp(const FoodApp());
}
class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
       debugShowCheckedModeBanner: false,
      home:BoardingPage(),

    );
  }
}

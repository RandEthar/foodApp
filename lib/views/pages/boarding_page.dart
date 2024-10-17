import 'package:flutter/material.dart';
import 'package:food_app/utils/app_images.dart';
import 'package:food_app/utils/app_styls.dart';
import 'package:food_app/utils/colors_app.dart';
import 'package:food_app/views/pages/nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class BoardingPage extends StatefulWidget {
  const BoardingPage({super.key});

  @override
  State<BoardingPage> createState() => _BoardingPageState();
}

class _BoardingPageState extends State<BoardingPage> {
  PageController controller = PageController();
  int currindex = 0;
  List<String> images = [
    Assets.imagesBurgeronboarding,
    Assets.imagesPizzainboard,
    Assets.imagesTacoonboard
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.orange,
      body: SafeArea(
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  "Welcome! Ready to Order\n Your Favorite Meal?",
                  style: GoogleFonts.aDLaMDisplay(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 300,
              child: PageView.builder(
                controller: controller,
                onPageChanged: (value) {
                  setState(() {
                    currindex = value;
                  });
                },
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    images[index],
                  );
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(images.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: CustomIndecator(active: index == currindex),
                );
              }),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text(
                "Make Your\ncustom burger",
                textAlign: TextAlign.left,
                style: GoogleFonts.aDLaMDisplay(
                  height: 1.2,
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Text(
                "You can make your own burger\n by selecting ingredients",
                textAlign: TextAlign.left,
                style: AppStyls.roboto14medium.copyWith(
                  color: const Color.fromARGB(255, 240, 198, 157),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 100, left: 30, right: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: const Color(0xffFFF1E5)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return NavBar();
                  }));
                },
                child: Text(
                  "Get Start",
                  style: GoogleFonts.volkhov(
                    height: 1.2,
                    color: Colors.orange,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomIndecator extends StatelessWidget {
  final bool active;
  const CustomIndecator({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: active ? 30 : 10,
      height: 10,
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: active ? const Color(0xffFFF1E5) : Colors.grey,
      ),
    );
  }
}

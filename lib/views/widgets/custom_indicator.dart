import 'package:flutter/material.dart';
import 'package:food_app/utils/app_images.dart';
import 'package:food_app/utils/colors_app.dart';

class CustomIndicator extends StatefulWidget {
  const CustomIndicator({super.key});

  @override
  State<CustomIndicator> createState() => _CustomIndicatorState();
}

class _CustomIndicatorState extends State<CustomIndicator> {
  List<dynamic>listImages=[
     Assets.imagesPizzaProduct,  Assets.imagesBurgerfoodpage,  Assets.imagesNuggets,
            Assets.imagesShawarma,
    
  ];
  int index = 0;
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        SizedBox(
          height:170,

        child:  PageView.builder(
          onPageChanged: (value) => setState(() {
            index=value;
          }),
          
          itemCount:listImages.length,
        itemBuilder: (context, index) {
          return Image.asset(listImages[index]);
        },)
        ),
        const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:List.generate(listImages.length,(indecator){
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Indecator(f: index==indecator),
              );
            }
             )
          )

      ],
    );
  }
}

class Indecator extends StatelessWidget {
  final bool f;
  const Indecator({super.key, required this.f});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: 12,height: 12,
      duration: const Duration(
      milliseconds: 300
    ),
    decoration: BoxDecoration(
      
      color: f?ColorsApp.orange:Colors.white,
      borderRadius: BorderRadius.circular(12),


    ),
    
    );
  }
}

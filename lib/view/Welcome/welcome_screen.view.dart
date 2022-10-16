import 'package:flutter/material.dart';
import 'package:travel_app_with_block/utils/colors.utils.dart';
import 'package:travel_app_with_block/widgets/larget_text_widget.widgets.dart';
import 'package:travel_app_with_block/widgets/medium_text_widget.widgets.dart';
import 'package:travel_app_with_block/widgets/responsive_button.widgets.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  List images = [
    "welcome-one.png",
    "welcome-two.png",
    "welcome-three.png",
  ];

  List headingText = [
    "Trips",
    "Explore",
    "Nature",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/${images[index]}"), fit: BoxFit.cover),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // for text
                  buildWelcomeScreenTextSection(index),
                  // for dots button
                  Column(
                    children: List.generate(3, (indexDots) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 1.8),
                        width: 8,
                        height: index == indexDots ? 25 : 8,
                        decoration: BoxDecoration(
                          color: index == indexDots
                              ? AppColors.mainColor
                              : AppColors.mainColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  //welcome screen text section
  Widget buildWelcomeScreenTextSection(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LargeTextWidget(text: headingText[index]),
        const MediumTextWidget(text: "Mountain", size: 30),
        const SizedBox(height: 20),
        SizedBox(
          width: 250,
          child: MediumTextWidget(
            text:
                "Mountain heights give you an incredible sense of freedom along with endurance test.",
            color: AppColors.textColor2,
            size: 15,
          ),
        ),
        const SizedBox(height: 30),
        const ResponsiveButtonWidget(width: 120),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:marketi/core/helpers/colors.dart';
import 'package:marketi/core/widgets/custom_text.dart';
import 'package:marketi/features/onboarding/widgets/content_list.dart';
import 'package:marketi/features/onboarding/widgets/dot_indicator.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key,required this.title,required this.image,required this.discription, required this.currentIndex});
final String image;
final String title;
final String discription;
final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(left: 40,right: 40,top: 10),
            child: Column(
              children: [
                Image.asset(
                  image,
                  height: 200,
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    onboardingContent(currentIndex).length,
                    (index) => DotIndicator(currentIndex: currentIndex,index: index,),
                  ),
                ),
                SizedBox(height: 10,),
                CustomText(
                  title,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
                SizedBox(height: 20),
                CustomText(
                  discription,
                  textdirection: TextAlign.center,
                  fontSize: 18,
                  color: primaryColor,
                ),
              ],
            ),
        );
  }
}


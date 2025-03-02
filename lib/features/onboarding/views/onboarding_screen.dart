import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/helpers/routes.dart';
import 'package:marketi/core/widgets/custom_elevated_button.dart';
import 'package:marketi/core/widgets/custom_icon_button.dart';
import 'package:marketi/features/onboarding/widgets/content_list.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  PageController? controller;
  
  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomIconButton(),
          Expanded(
            child: PageView.builder(
                 controller: controller,
                 itemCount: onboardingContent(currentIndex).length,
                  onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
                 itemBuilder: (context, index) => onboardingContent(currentIndex)[index],
            ),
            ),
            CustomElevatedButton(
              text:  currentIndex == onboardingContent(currentIndex).length - 1 ? 'Get Start' : 'Next',
              function: (){
                if (currentIndex == onboardingContent(currentIndex).length - 1) {
                context.go(Routes.login);
              }
                controller!.nextPage(
                  duration: Duration(milliseconds: 350),
                  curve: Curves.easeIn,
              );
            },currentIndex: currentIndex, controller: controller),
        ],
      ),
    );
  }
}


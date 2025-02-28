import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/helpers/colors.dart';
import 'package:marketi/core/helpers/routes.dart';
import 'package:marketi/core/widgets/custom_text.dart';
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
          Padding(
            padding: const EdgeInsets.all(15),
            child: IconButton.outlined(
              onPressed: (){
                context.go(Routes.login);
              }, 
              icon: CustomText('Skip',color: secondColor,fontSize: 20,),
              style: ButtonStyle(
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                )),
                side: WidgetStateProperty.all(BorderSide(
                color: dotColor.withValues(alpha: 178),
                )),),
            ),
          ),
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
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                 onPressed: (){
                  if (currentIndex == onboardingContent(currentIndex).length - 1) {
                    context.go(Routes.login);
                  }
                  controller!.nextPage(
                    duration: Duration(milliseconds: 350),
                    curve: Curves.easeIn,
                  );
                 },
                 style: ElevatedButton.styleFrom(
                  backgroundColor: secondColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  )
                 ),
                 child: CustomText(
                  currentIndex == onboardingContent(currentIndex).length - 1 ? 'Get Start' : 'Next',
                  fontSize: 18,
                  ),
                  ),
              ),
            ),
        ],
      ),
    );
  }
}
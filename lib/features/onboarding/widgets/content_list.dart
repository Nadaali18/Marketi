import 'package:flutter/material.dart';
import 'package:marketi/features/onboarding/widgets/on_boarding_body.dart';

List<Widget> onboardingContent(int currentIndex) =>[
  OnBoardingBody(
    title: 'Welcome to Marketi', 
    image: 'assets/images/Illustration_Onboarding_1.png', 
    discription: 'Discover a world of endless \npossibilities and shop from \nthe comfort of your fingertips \nBrowse through a wide range \nof products, from fashion \nand electronics to home.', 
    currentIndex: currentIndex,
    ),
  OnBoardingBody(
    title: 'Easy to Buy', 
    image: 'assets/images/Illustration_Onboarding_2.png', 
    discription: 'Find the perfect item that suits your style and \nneeds With secure payment options and fast \ndelivery, shopping has never been easier.', 
    currentIndex: currentIndex
    ),
  OnBoardingBody(
    title: 'Wonderful User Experience', 
    image: 'assets/images/Illustration_Onboarding_3.png', 
    discription: 'Start exploring now and experience the \nconvenience of online shopping at its best.', 
    currentIndex: currentIndex
    ),
];
import 'package:flutter/material.dart';
import 'package:marketi/core/helpers/colors.dart';
import 'package:marketi/core/widgets/custom_text.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.currentIndex,
    required this.controller,
    required this.text,
    required this.function,
  });

  final int currentIndex;
  final PageController? controller;
  final String text;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: double.infinity,
        height: 60,
        child: ElevatedButton(
         onPressed: function,
         style: ElevatedButton.styleFrom(
          backgroundColor: secondColor,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          )
         ),
         child: CustomText(
          text,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          ),
          ),
      ),
    );
  }
}

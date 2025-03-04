import 'package:flutter/material.dart';
import 'package:marketi/core/helpers/colors.dart';
import 'package:marketi/core/widgets/custom_text.dart';

class CustomRoww extends StatelessWidget {
  const CustomRoww({super.key,required this.text,required this.text1,required this.function});
final String text;
final String text1;
final Function() function;
  @override
  Widget build(BuildContext context) {
    return Row(
     mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(text),
        InkWell(
          onTap: function,
          child: CustomText(text1,color: secondColor,)),
      ],
    );
  }
}
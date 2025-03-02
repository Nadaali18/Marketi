import 'package:flutter/material.dart';
import 'package:marketi/core/helpers/colors.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    required this.currentIndex,
    required this.index
  });

  final int currentIndex;
 final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: currentIndex == index ? primaryColor : dotColor,
                       ),
                      );
  }
}
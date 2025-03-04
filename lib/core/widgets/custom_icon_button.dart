
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/helpers/colors.dart';
import 'package:marketi/core/helpers/routes.dart';
import 'package:marketi/core/widgets/custom_text.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    this.icon,
    this.text,
    this.image,
    required this.value
  });
final String? text;
final Widget? icon;
final String? image;
final double value;
  @override
  Widget build(BuildContext context) {
    return IconButton.outlined(
      onPressed: (){
        context.go(Routes.login);
      }, 
      icon: text!= null ? CustomText(text,color: secondColor,fontSize: 20,) : icon!,
      style: ButtonStyle(
        shape: WidgetStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(value),
        )),
        side: WidgetStateProperty.all(BorderSide(
        color: dotColor.withValues(alpha: 178),
        )),),
    );
  }
}
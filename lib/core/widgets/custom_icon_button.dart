
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/helpers/colors.dart';
import 'package:marketi/core/helpers/routes.dart';
import 'package:marketi/core/widgets/custom_text.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
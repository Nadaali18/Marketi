import 'package:flutter/material.dart';
import 'package:marketi/core/widgets/custom_icon_button.dart';
import 'package:marketi/core/widgets/custom_text.dart';
import 'package:social_media_buttons/social_media_button.dart';

class CustomColumn extends StatelessWidget {
  const CustomColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText('Or Continue With'),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            CustomIconButton(icon: SocialMediaButton.google(size: 18,),value: 30,),
            SizedBox(width: 5,),
            CustomIconButton(icon: SocialMediaButton.facebook(size: 18,),value: 30,),
            SizedBox(width: 5,),
            CustomIconButton(icon: SocialMediaButton.twitter(size: 18,),value: 30,),
           ],
                  ),
        ],
      ),
    );
  }
}
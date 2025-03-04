import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/helpers/routes.dart';
import 'package:marketi/core/widgets/custom_column.dart';
import 'package:marketi/core/widgets/custom_elevated_button.dart';
import 'package:marketi/core/widgets/custom_icon_button.dart';
import 'package:marketi/core/widgets/custom_roww.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.all(15),
            child: CustomIconButton(icon: Icon(Icons.arrow_back_ios_new),value: 15,),
        ),
        Center(
            child: Image.asset('assets/images/Logo_Splash_Screen.png',height: 150,width: 150,),
        ),
        CustomElevatedButton(text: 'Sign Up', function: (){}),
        CustomColumn(),
        SizedBox(height: 5,),
        CustomRoww(text: 'Already, have an account ', text1:'login?',function: () => context.go(Routes.login),),
      ],
    );
  }
}
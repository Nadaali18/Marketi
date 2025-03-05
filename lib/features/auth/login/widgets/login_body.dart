import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/helpers/regex_helper.dart';
import 'package:marketi/core/helpers/routes.dart';
import 'package:marketi/core/widgets/custom_column.dart';
import 'package:marketi/core/widgets/custom_elevated_button.dart';
import 'package:marketi/core/widgets/custom_icon_button.dart';
import 'package:marketi/core/widgets/custom_roww.dart';
import 'package:marketi/core/widgets/custom_text_form_field.dart';
import 'package:marketi/features/auth/login/widgets/custom_row.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final GlobalKey<FormState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Form(
          key: key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: CustomIconButton(text: 'Skip',value: 15,),
              ),
              Center(
                child: Image.asset('assets/images/Logo_Splash_Screen.png',height: 250,width: 250,),
              ),
              CustomTextFormField(
                iconPre: Icons.email_outlined,hintText: 'Username or Email',
                function: (value) => RegexHelper.validateEmail(value),
                ),
              CustomTextFormField(
                iconPre: Icons.lock_outline_rounded,
                hintText: 'Your Password',iconSuf: Icons.visibility,iconSuf1: Icons.visibility_off,
                function: (value) => RegexHelper.validatePassword(value),
                ),
              SizedBox(height: 3,),
              CustomRow(),
              CustomElevatedButton(text: 'Log in', function:() => RegexHelper.submitForm(key,context,Routes.home),),
              CustomColumn(),
              SizedBox(height: 5,),
              CustomRoww(text: 'Are you new in Marketi ', text1:'register?',function: () => context.go(Routes.signUp),),
              SizedBox(height: 10,),
            ],
            ),
        ),
    );
  }
}
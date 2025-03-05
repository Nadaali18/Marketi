import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/helpers/regex_helper.dart';
import 'package:marketi/core/helpers/routes.dart';
import 'package:marketi/core/widgets/custom_column.dart';
import 'package:marketi/core/widgets/custom_elevated_button.dart';
import 'package:marketi/core/widgets/custom_icon_button.dart';
import 'package:marketi/core/widgets/custom_roww.dart';
import 'package:marketi/core/widgets/custom_text_form_field.dart';

class SignupBody extends StatefulWidget {
  const SignupBody({super.key});

  @override
  State<SignupBody> createState() => _SignupBodyState();
}

class _SignupBodyState extends State<SignupBody> {
  final GlobalKey<FormState> key = GlobalKey();
  TextEditingController passwordController = TextEditingController();

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
                child: CustomIconButton(icon: Icon(Icons.arrow_back_ios_new),value: 30,),
            ),
            Center(
                child: Image.asset('assets/images/Logo_Splash_Screen.png',height: 200,width: 200,),
            ),
            CustomTextFormField(
              text: 'Your Name',iconPre: Icons.person,hintText: 'Full Name',
              function: (value) => RegexHelper.validateName(value),
              ),
            SizedBox(height: 3,),
            CustomTextFormField(
              text: 'Username',iconPre: Icons.person_2,hintText: 'Username',
              function: (value) => RegexHelper.validateUsername(value),
              ),
            SizedBox(height: 3,),
            CustomTextFormField(
              text: 'Phone Number',iconPre: Icons.phone_android_outlined,hintText: '+20 1501142409',
              function: (value) => RegexHelper.validatePhoneNumber(value),
              ),
            SizedBox(height: 3,),
            CustomTextFormField(
              text: 'Email',iconPre: Icons.email_outlined,hintText: 'You@gmail.com',
              function: (value) => RegexHelper.validateEmail(value),
              ),
            SizedBox(height: 3,),
            CustomTextFormField(
              controller: passwordController,
              text: 'Password',iconPre: Icons.lock_outline_rounded,hintText: 'Your Password',iconSuf: Icons.visibility,iconSuf1: Icons.visibility_off,
              function: (value) => RegexHelper.validatePassword(value),
              ),
            SizedBox(height: 3,),
            CustomTextFormField(
              text: 'Confirm Password',iconPre: Icons.lock_outline_rounded,hintText: 'Confirm Your Password',iconSuf: Icons.visibility,iconSuf1: Icons.visibility_off,
              function: (value) => RegexHelper.validateConfirmPassword(value,passwordController.text.trim()),
              ),
            CustomElevatedButton(text: 'Sign Up',function:() => RegexHelper.submitForm(key,context,Routes.home),),
            CustomColumn(),
            SizedBox(height: 5,),
            CustomRoww(text: 'Already, have an account ', text1:'login?',function: () => context.go(Routes.login),),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
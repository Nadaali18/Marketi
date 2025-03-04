import 'package:flutter/material.dart';
import 'package:marketi/features/signUp/widget/signup_body.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignupBody(),
    );
  }
}
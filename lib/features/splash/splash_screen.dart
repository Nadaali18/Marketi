import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marketi/core/helpers/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      if (mounted) {
        context.go(Routes.onboarding);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 300), 
              duration: Duration(seconds: 3),
              curve: Curves.easeOut,
              builder: (context, size, child) {
                return Container(
                  width: size,
                  height: size,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    image: size > 0 ? DecorationImage(
                                         image: AssetImage('assets/images/Logo_Splash_Screen.png'),
                                         fit: BoxFit.cover,
                                      ): null,
                  ),
                );
              },
            ), 
      ),
    );
  }
}

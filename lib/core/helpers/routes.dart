import 'package:go_router/go_router.dart';
import 'package:marketi/features/auth/login/views/login_screen.dart';
import 'package:marketi/features/home/home.dart';
import 'package:marketi/features/onboarding/views/onboarding_screen.dart';
import 'package:marketi/features/auth/signUp/views/signup_screen.dart';
import 'package:marketi/features/splash/splash_screen.dart';

class Routes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String signUp = '/signUp';
  static const String home = '/home';

  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: splash,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: onboarding,
        builder: (context, state) => const OnboardingScreen(),
      ),
      GoRoute(
        path: login,
        builder: (context, state) => const Login(),
      ),
      GoRoute(
        path: signUp,
        builder: (context, state) => const Signup(),
      ),
      GoRoute(
        path: home, 
        builder: (context, state) => const Home(),
      ),
    ],
  );
}

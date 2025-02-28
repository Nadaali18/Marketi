import 'package:go_router/go_router.dart';
import 'package:marketi/features/login.dart';
import 'package:marketi/features/onboarding/views/onboarding_screen.dart';
import 'package:marketi/features/splash/splash_screen.dart';

class Routes {
  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
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
    ],
  );
}
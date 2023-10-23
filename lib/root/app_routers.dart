import 'package:flutter/material.dart';
import 'package:template/pages/home/home.screen.dart';
import 'package:template/pages/login/login.screen.dart';
import 'package:template/pages/splash/splash.screen.dart';

abstract class AppRouters {
  static const String splash = '/splash';
  static const String login = '/login';
  static const String home = '/home';
  static const String profile = '/profile';
  static const String setting = '/setting';

  static Route? onGenRoutes(RouteSettings setting) {
    switch (setting.name) {
      case splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );
      case login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return null;
    }
  }
}

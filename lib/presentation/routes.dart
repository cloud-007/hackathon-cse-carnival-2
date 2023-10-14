import 'package:flutter/material.dart';
import 'package:reachout/presentation/screen/auth/auth_screen.dart';
import 'package:reachout/presentation/screen/main_screen.dart';

class Routes {
  static const String auth = 'auth';
  static const String main = 'main';

  static PageRoute generateRoutes(RouteSettings settings) {
    return PageRouteBuilder(
      settings: settings,
      pageBuilder: (context, animation, secondaryAnimation) {
        switch (settings.name) {
          case auth:
            return const AuthScreen();
          case main:
            return const MainScreen();
          default:
            return const Scaffold(body: Center(child: Text('404')));
        }
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }
}

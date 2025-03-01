
import 'package:evently_v1/core/routes/routes_name.dart';
import 'package:evently_v1/presentation/pages/onboarding/start.dart';
import 'package:evently_v1/presentation/pages/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class appRoutes{
  static Map<String, Widget Function(BuildContext)> routes = {
    routesName.splash: (_) => splashScreen(),
    routesName.startScreen: (_) => startScreen(),



  };
}
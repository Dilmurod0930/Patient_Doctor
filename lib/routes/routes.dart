import 'package:flutter/material.dart';
import 'package:med/Screens/auth/home_auth/home_auth.dart';
import 'package:med/Screens/auth/sing_in/sing_in_auth.dart';
import 'package:med/Screens/auth/sing_up/sing_up_auth.dart';
import 'package:med/Screens/auth/splash/splash_auth.dart';

class MyRoutes {
  static final MyRoutes _instants = MyRoutes._init();
  static MyRoutes get instants => _instants;
  MyRoutes._init();
  Route? onGeneretRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case "/splash":
        return MaterialPageRoute(builder: (context) => SplashAuth());
      case "/home":
        return MaterialPageRoute(builder: (context) => HomeAuthPage());
      case "/sing_in":
        return MaterialPageRoute(builder: (context) => LogInPage());
      case "/sing_up":
        return MaterialPageRoute(builder: (context) => SingUpPage());
      case "/password":
        return MaterialPageRoute(builder: (context) => HomeAuthPage());
      case "/personal_ID":
        return MaterialPageRoute(builder: (context) => HomeAuthPage());
    }
  }
}

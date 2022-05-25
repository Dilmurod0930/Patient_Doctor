import 'package:flutter/material.dart';
import 'package:med/Screens/auth/splash/splash_auth.dart';

class MyRoutes {
  static final MyRoutes _instants = MyRoutes._init();
  static MyRoutes get instants => _instants;
  MyRoutes._init();
  Route? onGeneretRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case "splash":
        return material(SplashAuth());
      case "auth":
        return material(SplashAuth());
      case "sing_in":
        return material(SplashAuth());
      case "sing_up":
        return material(SplashAuth());
      case "password":
        return material(SplashAuth());
        case "personal_ID":
        return material(SplashAuth());
    }
  }

  material(Widget page) {
    MaterialPageRoute(builder: (context) => page);
  }
}

import 'package:flutter/material.dart';
import 'package:med/Screens/Main/home/add_page.dart';
import 'package:med/Screens/Main/main_page.dart';
import 'package:med/Screens/Main/muolaja/muolaja_page.dart';
import 'package:med/Screens/Profil/profil/asd/profil_page.dart';
import 'package:med/Screens/auth/home_auth/home_auth.dart';
import 'package:med/Screens/auth/sing_in/sing_in_auth.dart';
import 'package:med/Screens/auth/sing_up/sing_up_auth.dart';
import 'package:med/Screens/auth/sing_up/sing_up_persanal.dart';
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
        return MaterialPageRoute(builder: (context) => SintUpPersonalID());
      case "/main":
        return MaterialPageRoute(builder: (context) => MainPage());
      case "/add":
        return MaterialPageRoute(builder: (context) => AddPage());
      case "/muolaja":
        return MaterialPageRoute(builder: (context) => MuolajaPage());
      // case "/profil":
      //   return MaterialPageRoute(builder: (context) => ProfilePage());
    }
  }
}

import 'package:flutter/material.dart';

class NavigationService {
  static final NavigationService _instance = NavigationService._init();
  static NavigationService get instance => _instance;
  NavigationService._init();
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic> pushNamed(String routeName) async {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  void pop() {
    return navigatorKey.currentState!.pop();
  }

  Future<dynamic> pushnamedRemuveUntill(String routeName) {
    return navigatorKey.currentState!
        .pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  Future<dynamic> pushRepl(String routeName) {
    return navigatorKey.currentState!.pushReplacementNamed(routeName);
  }
}
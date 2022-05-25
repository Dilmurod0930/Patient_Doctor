import 'package:flutter/material.dart';

class SplashAuth extends StatefulWidget {
  const SplashAuth({ Key? key }) : super(key: key);

  @override
  State<SplashAuth> createState() => _SplashAuthState();
}

class _SplashAuthState extends State<SplashAuth> {
  int time = 3;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: time),
      () => Navigator.pushReplacementNamed(context, "lang"),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
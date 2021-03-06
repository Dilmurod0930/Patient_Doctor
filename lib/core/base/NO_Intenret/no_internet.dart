import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:med/core/constants/color_const.dart';
import 'package:med/core/constants/font_const.dart';

class NoInternetView extends StatelessWidget {
  const NoInternetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                  child: LottieBuilder.asset('assets/anim/no_internet.json')),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Center(
                child: Text(
                  "Could not connect to internet.\n Please check again.",
                  style: TextStyle(
                    fontSize: FontConst.kLargeFont,
                    color: ColorConst.darck60,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

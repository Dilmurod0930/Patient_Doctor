
import 'package:flutter/material.dart';
import 'package:med/core/constants/color_const.dart';
import 'package:med/core/constants/font_const.dart';

Container mainButton(
  BuildContext context,
  text,
) {
  return Container(
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width * 0.9,
    height: MediaQuery.of(context).size.height * 0.06,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: ColorConst.kPimaryColor),
    child: Text(
      text,
      style:
          TextStyle(fontSize: FontConst.largeFont - 2, color: ColorConst.white),
    ),
  );
}
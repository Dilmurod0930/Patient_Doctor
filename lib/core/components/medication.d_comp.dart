import 'package:flutter/material.dart';
import 'package:med/core/constants/color_const.dart';
import 'package:med/core/constants/font_const.dart';

Column medicationappoint(BuildContext context, text1, text2) {
  return Column(
    children: [
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
      ),
      Text(
        text1,
        style: TextStyle(
            fontSize: FontConst.extraLargeFont + 2,
            fontWeight: FontWeight.w600),
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.03,
      ),
      Text(
        text2,
        style: TextStyle(
            fontSize: FontConst.mediumFont,
            color: ColorConst.black.withOpacity(0.5),
            fontWeight: FontWeight.w500),
        textAlign: TextAlign.center,
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
      ),
    ],
  );
}
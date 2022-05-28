
import 'package:flutter/material.dart';
import 'package:med/core/constants/color_const.dart';
import 'package:med/core/constants/font_const.dart';

Column signAppBar(BuildContext context, String text) {
  return Column(
    children: [
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.055,
      ),
      InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                  color: ColorConst.kPimaryColor,
                ),
                Text(
                  "Back",
                  style: TextStyle(
                      fontSize: FontConst.largeFont - 2,
                      color: ColorConst.kPimaryColor),
                ),
              ],
            ),
            Text(text,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: FontConst.largeFont - 2,
                )),
            const SizedBox(
              width: 40,
            )
          ],
        ),
        onTap: () {
          
        },
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.01,
      ),
      Divider(color: ColorConst.black.withOpacity(0.5))
    ],
  );
}
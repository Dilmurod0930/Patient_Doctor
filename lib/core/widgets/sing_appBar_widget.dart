import 'package:flutter/material.dart';
import 'package:med/core/constants/color_const.dart';
import 'package:med/core/constants/font_const.dart';

Column signAppBar(BuildContext context, String text) {
  return Column(
    children: [
      SizedBox(height: MediaQuery.of(context).size.height * 0.055),
      InkWell(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 4),
            Text(text,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: FontConst.largeFont - 2,
                )),
            const SizedBox(width: 12),
          ],
        ),
        onTap: () {},
      ),
      SizedBox(height: MediaQuery.of(context).size.height * 0.01),
      Divider(
        color: ColorConst.black.withOpacity(0.5),
      )
    ],
  );
}

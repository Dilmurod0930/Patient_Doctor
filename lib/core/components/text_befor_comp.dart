import 'package:flutter/material.dart';
import 'package:med/core/constants/font_const.dart';

textBeforeInput(text) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: TextStyle(
          fontSize: FontConst.mediumFont,
        ),
      ),
    );

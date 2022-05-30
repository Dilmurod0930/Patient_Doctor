import 'package:flutter/material.dart';
import 'package:med/core/constants/color_const.dart';
import 'package:med/core/constants/font_const.dart';
import 'package:med/core/widgets/sing_appBar_widget.dart';

class TakenDrugDetailsPage extends StatelessWidget {
  const TakenDrugDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          signAppBar(context, "Taken drug details"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textTreatDetl("Drug name"),
                textTreatDetl2("Dilatrabon"),
                textTreatDetl("Dose"),
                textTreatDetl2("250 mg"),
                textTreatDetl("Taking dates(start - end)"),
                textTreatDetl2("start - end"),
                textTreatDetl("How many times in a day"),
                textTreatDetl2("2 times a day "),
                textTreatDetl("Associated with"),
                textTreatDetl2("Multiple sclerosis"),
                textTreatDetl("Comments "),
                textTreatDetl2("Consume without water. It lessens the effect"),
              ],
            ),
          )
        ],
      ),
    );
  }

  static textTreatDetl2(text) => Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Text(
          text,
          style: TextStyle(
            fontSize: FontConst.mediumFont + 2,
            fontWeight: FontWeight.w600,
          ),
        ),
      );

  static Padding textTreatDetl(text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: Text(
        text,
        style: TextStyle(
          fontSize: FontConst.mediumFont,
          color: ColorConst.black.withOpacity(0.4),
        ),
      ),
    );
  }
}

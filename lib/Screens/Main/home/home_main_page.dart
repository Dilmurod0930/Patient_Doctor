import 'package:flutter/material.dart';
import 'package:med/core/components/main_botton.dart';
import 'package:med/core/components/medication.d_comp.dart';
import 'package:med/core/constants/color_const.dart';
import 'package:med/core/constants/font_const.dart';
import 'package:med/core/init/navigatot_service.dart';

class HomeMainpage extends StatelessWidget {
  const HomeMainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Today's medications",
              style: TextStyle(
                fontSize: FontConst.mediumFont,
                fontWeight: FontWeight.w600,
                color: ColorConst.black.withOpacity(0.4),
              ),
            ),
            medicationappoint(context, "No medications",
                "They will appear here only when doctor adds them to your account "),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Monthly appointments",
                  style: TextStyle(
                      fontSize: FontConst.mediumFont,
                      color: ColorConst.black.withOpacity(0.5),
                      fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Text(
                      "January 2022",
                      style: TextStyle(
                          fontSize: FontConst.mediumFont,
                          color: ColorConst.blue,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              children: [
                Text(
                  "Today's appointments",
                  style: TextStyle(
                      fontSize: FontConst.mediumFont,
                      color: ColorConst.black.withOpacity(0.5),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Center(
              child: medicationappoint(context, "No appointments",
                  "You haven't added any appointment yet "),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            InkWell(
              child: mainButton(context, "Add new appointment"),
              onTap: () {
                NavigationService.instance.pushNamed("add_apointment");
              },
            )
          ],
        ),
      ),
    );
  }
}

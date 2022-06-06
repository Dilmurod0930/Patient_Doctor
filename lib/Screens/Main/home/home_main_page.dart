import 'package:flutter/material.dart';
import 'package:med/core/components/main_botton.dart';
import 'package:med/core/components/medication.d_comp.dart';
import 'package:med/core/constants/color_const.dart';
import 'package:med/core/constants/font_const.dart';
import 'package:table_calendar/table_calendar.dart';

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
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: ColorConst.grey,
                  child: Center(
                    child: IconButton(
                      icon: Icon(
                        Icons.person,
                        color: ColorConst.black,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "/profil");
                      },
                    ),
                  ),
                  
                ),
                Image.asset('assets/images/apbar.png'),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications),
                )
              ],
            ),
            Divider(
              color: ColorConst.black.withOpacity(0.8),
            ),
            const SizedBox(height: 18),
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
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
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
                    TextButton(
                      child: Text(
                        "May 2022 ^ ",
                        style: TextStyle(
                          fontSize: FontConst.mediumFont,
                          color: ColorConst.blue,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
              ),
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
                Navigator.pushNamed(context, "/add");
              },
            )
          ],
        ),
      ),
    );
  }
}

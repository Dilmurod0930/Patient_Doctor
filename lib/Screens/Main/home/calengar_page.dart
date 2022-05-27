import 'package:flutter/material.dart';
import 'package:med/core/constants/color_const.dart';
import 'package:med/core/constants/font_const.dart';
import 'package:med/core/init/navigatot_service.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: -MediaQuery.of(context).size.hashCode * 0.06,
              ),
              Row(
                children: [
                  InkWell(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            fontSize: FontConst.mediumFont,
                            color: ColorConst.blue),
                      ),
                    ),
                    onTap: () {
                      NavigationService.instance.pop();
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      "Book an appointment",
                      style: TextStyle(
                          fontSize: FontConst.mediumFont + 2,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Divider(
                color: ColorConst.black.withOpacity(0.5),
              )
            ],
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Text('"Region"'),
                SizedBox(),
                Form(
                  child: Column(
                    children: [],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:med/core/components/text_fild_comp.dart';
import 'package:med/core/constants/color_const.dart';
import 'package:med/core/constants/font_const.dart';

class AddPage extends StatefulWidget {
  const AddPage({Key? key}) : super(key: key);

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, "/main", (route) => false);
          },
          child: const Text(
            'Cancel',
            style: TextStyle(
              fontSize: 13,
              color: Colors.blue,
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Book an appointment",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            child: Column(
              children: [
                Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Region"),
                      const SizedBox(height: 18),
                      inputfield(
                        "Choose hospital region..",
                      ),
                      const SizedBox(height: 18),
                      const Text("District"),
                      const SizedBox(height: 18),
                      inputfield("Choose hospital district..."),
                      const SizedBox(height: 18),
                      const Text("Hospital"),
                      const SizedBox(height: 18),
                      inputfield("Choose doctor’s position..."),
                      const SizedBox(height: 18),
                      const Text("Doctor’s position"),
                      const SizedBox(height: 18),
                      inputfield("Choose the doctor you want..."),
                      const SizedBox(height: 18),
                      const Text("The doctor"),
                      const SizedBox(height: 18),
                      inputfield("Choose doctor’s service type..."),
                      const SizedBox(height: 18),
                      const SizedBox(height: 18),
                      const Text("Enter the time"),
                      const SizedBox(height: 18),
                      inputfield("DD.MM.YYYY / HH:MM - HH:MM"),
                      const SizedBox(height: 18),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.075,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          color: ColorConst.kBotton,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: TextButton(
                            child: const Text(
                              "Confirm",
                              style: TextStyle(
                                color: ColorConst.white,
                                fontSize: 22,
                              ),
                            ),
                            onPressed: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                context: context,
                                builder: (context) {
                                  return SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.5,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Center(
                                            child: SizedBox(
                                              child: Image.asset(
                                                  'assets/images/chek.png'),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              children: const [
                                                Text(
                                                  '   Your have successfully booked \n \t  an appointment',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Text(
                                                    'You can go to Mavlonov Boburjon on January 24 at 10:00 - 11:00',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(28.0),
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.0699,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.9,
                                            decoration: BoxDecoration(
                                              color: ColorConst.kBotton,
                                              borderRadius:
                                                  BorderRadius.circular(23),
                                            ),
                                            child: TextButton(
                                              child: const Text(
                                                "Go home",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: ColorConst.white),
                                              ),
                                              onPressed: () {
                                                Navigator
                                                    .pushNamedAndRemoveUntil(
                                                        context,
                                                        "/main",
                                                        (route) => false);
                                              },
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

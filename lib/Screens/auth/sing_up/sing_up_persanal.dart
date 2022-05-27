import 'package:flutter/material.dart';
import 'package:med/core/constants/color_const.dart';
import 'package:med/core/constants/font_const.dart';

class SintUpPersonalID extends StatelessWidget {
  const SintUpPersonalID({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Your personal ID")),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // const SizedBox(height: 30),
              Image.asset('assets/images/id.png'),
              const SizedBox(height: 30),
              Container(
                child: const Text(
                  'Doctors use your ID to have an access to your   medical informations. We have sent this ID and  your password to your number so you don’t forget them',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               const   Text("Your ID"),
                 Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.07,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: ColorConst.black.withOpacity(0.4)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            height: MediaQuery.of(context).size.height * 0.07,
                            decoration: BoxDecoration(
                              border: Border.all(color: ColorConst.black.withOpacity(0.2)),
                              borderRadius:const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                              ),
                              color: ColorConst.black.withOpacity(0.15),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "25983365",
                                style: TextStyle(fontSize: FontConst.mediumFont),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 10),
                                child: Text(
                                  "copy",
                                  style: TextStyle(
                                    fontSize: FontConst.largeFont,
                                  ),
                                ),
                              ),
                              // SvgPicture.asset("assets/icons/copy.svg")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.098,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: ColorConst.kBotton,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextButton(
                  child: const Text(
                    'Go to your account',
                    style: TextStyle(color: ColorConst.white, fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/main", (route) => false);
                  },
                ),  
              ),
            ],
          ),
        ),
      ),
    );
  }
}

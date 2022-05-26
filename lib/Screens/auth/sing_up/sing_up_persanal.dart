import 'package:flutter/material.dart';
import 'package:med/core/constants/color_const.dart';

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
                  Text("Your ID"),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.098,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
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

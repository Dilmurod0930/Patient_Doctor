import 'package:flutter/material.dart';
import 'package:med/core/constants/color_const.dart';

class HomeAuthPage extends StatelessWidget {
  const HomeAuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('HomrAuth Page'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Column(
              children: const [
                SizedBox(
                  child: Text(
                    "Your medical darta \n is always with you",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  child: Text(
                    "Nunc orci sed sed posuere volutpat varius\n  egestas sit. Amet, suscipit eget dis fusce  \n      quam in aliquet pulvinar",
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.094,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: ColorConst.kBotton),
                  child: Center(
                    child: TextButton(
                      child: const Text("Get Statred"),
                      onPressed: () {
                        Navigator.pushNamed(context, "/sing_up");
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: MediaQuery.of(context).size.height * 0.094,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      border: Border.all()),
                  child: Center(
                    child: TextButton(
                      child: const Text("Log In"),
                      onPressed: () {
                        Navigator.pushNamed(context, "/sing_in");
                      },
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

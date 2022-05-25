import 'package:flutter/material.dart';
import 'package:med/core/constants/color_const.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Log In")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              child: Center(
                child: Text(
                  "Log in to your account",
                ),
              ),
            ),
          Column(children: [  
            const Text("Phone nummber"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField( 
                decoration: const InputDecoration(
                  fillColor: Colors.grey,
                  focusColor: Colors.grey,labelText: 'Phone',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Your password';
                  }
                  return null;
                },
              ),
            ),
            const SizedBox(height: 12),
            const Text("Your password"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  fillColor: Colors.grey,
                  focusColor: Colors.grey,
                  labelText: 'password',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Your password';
                  }
                  return null;
                },
              ),
            ),],),
            Row(
              children: [
                const SizedBox(width: 14),
                Container(
                  height: MediaQuery.of(context).size.height * 0.078,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: ColorConst.kBotton,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                    child: const Text(
                      "Log In",
                      style: TextStyle(
                        color: ColorConst.white,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/");
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

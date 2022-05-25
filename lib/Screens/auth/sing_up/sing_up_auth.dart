import 'package:flutter/material.dart';
import 'package:med/core/constants/color_const.dart';

class SingUpPage extends StatelessWidget {
  const SingUpPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Sing Up")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
         const   Padding(
              padding:  EdgeInsets.all(8.0),
              child:  SizedBox(
                child: Center(
                  child: Text(
                    "Log in to your account",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
            ),
          const SizedBox(height: 73),
                const Text("Full name"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      fillColor: Colors.grey,
                      focusColor: Colors.grey,
                      labelText: 'Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Your Name';
                      }
                      return null;
                    },
                  ),
                ),
                 const Text("Phone nummber"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      fillColor: Colors.grey,
                      focusColor: Colors.grey,
                      labelText: 'Phone',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Your nummber';
                      }
                      return null;
                    },
                  ),
                ),

                const SizedBox(height: 22),
                const Text("Your password"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      focusColor: Colors.grey,
                      labelText: 'password',
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove_red_eye_outlined),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Your password';
                      }
                      return null;
                    },
                  ),
                ),
              const SizedBox(height: 33),
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
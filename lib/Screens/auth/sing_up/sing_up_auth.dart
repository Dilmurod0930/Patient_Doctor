import 'package:flutter/material.dart';
import 'package:med/core/constants/color_const.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Sing Up")),
      body:SingleChildScrollView(child: SizedBox(child:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Center(
                    child: Text(
                      "Sign up in order to get a full access to the system",
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
                  controller: _nameController,
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
                  controller: _passwordController,
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
                  controller: _passwordController,
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
                        if (_formKey.currentState!.validate()) {
                          String email = _nameController.text.trim();
                          String password = _passwordController.text.trim();
                          String phone = _phoneController.text.trim();
                          Navigator.pushNamed(context, "/");
                        }
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),),)
    );
  }
}

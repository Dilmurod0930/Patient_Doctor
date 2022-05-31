import 'package:flutter/material.dart';
import 'package:med/core/constants/color_const.dart';

class HospitlPage extends StatefulWidget {
  const HospitlPage({Key? key}) : super(key: key);

  @override
  State<HospitlPage> createState() => _HospitlPageState();
}

class _HospitlPageState extends State<HospitlPage> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: TextFormField(
                    controller: _controller,
                    decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: ColorConst.red),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              Divider(
                color: ColorConst.black,
              )
            ],
          ),
        ],
      ),
    );
  }
}

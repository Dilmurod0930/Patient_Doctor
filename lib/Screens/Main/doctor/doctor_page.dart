import 'package:flutter/material.dart';
import 'package:med/core/constants/color_const.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({Key? key}) : super(key: key);

  @override
  State<DoctorPage> createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const CircleAvatar(
          backgroundColor: Colors.grey,
          child: Icon(
            Icons.person,
            color: Colors.black,
            size: 33,
          ),
        ),
        centerTitle: true,
        title: Image.asset('assets/images/apbar.png'),
        actions: [
          IconButton(
            onPressed: () {
           
            },
            icon: Image.asset('assets/images/icon.png'),
          ),
        ],
        elevation: 0,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}

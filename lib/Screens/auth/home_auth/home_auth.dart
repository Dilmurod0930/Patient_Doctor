import 'package:flutter/material.dart';
import 'package:med/core/constants/color_const.dart';

class HomeAuthPage extends StatelessWidget {
  const HomeAuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Expanded(child: SizedBox(child: Image.asset(""))),
          Column(
            children: const  [
              Expanded(child: SizedBox(child: Text("Your medical darta \n is always with you"),)),
              Expanded(child: SizedBox(child: Text("Nunc orci sed sed posuere volutpat varius egestas sit. Amet, suscipit eget dis fusce quam in aliquet pulvinar"),)),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.0994,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: ColorConst.kBotton),
            child: const Center(child: Text("Get Statred")),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.0994,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17), border: Border.all()),
            child: const Center(child: Text("Log In")),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:med/Screens/Main/bloc/main_cubit.dart';
import 'package:med/Screens/Main/bloc/main_state.dart';
import 'package:med/core/constants/color_const.dart';
import 'package:med/core/constants/font_const.dart';

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
        leading: Container(
          decoration: BoxDecoration(
            color: ColorConst.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(92),
          ),
          child: Icon(
            Icons.person,
            color: ColorConst.grey,
          ),
        ),
        centerTitle: true,
        title: Image.asset('assets/images/apbar.png'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset('assets/images/icon.png'),
          ),
        ],
        elevation: 0,
      ),
      body: BlocBuilder<HomeCubit, MainState>(
        builder: (context, state) {
          if (state is InitialMain) {
            return SingleChildScrollView(
              child: SizedBox(
                child: Column(
                  children: [
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
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.8,
                      child: ListView.builder(
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                width: MediaQuery.of(context).size.width * 0.9,
                                decoration: BoxDecoration(
                                  color: ColorConst.red,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Image.network(
                              "https://source.unsplash.com/random/$index", fit: BoxFit.cover,),
                              ),
                              SizedBox(height: MediaQuery.of(context).size.height * 0.0199,),
                              Column(
                                children: [
                                  Text(
                                    "Uzbekistan New International Clinic",
                                    style: TextStyle(
                                    fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: ColorConst.black),
                                  ),
                                  Text(
                                    "Tashkent, Shaykhontokhur, Navoi street",
                                    style: TextStyle(fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: ColorConst.grey),
                                  )
                                ],
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.0699,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else if (state is LoadingMain) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else if (state is ErrorMain) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          } else {
            return const Text("State da Erorr");
          }
        },
      ),
    );
  }
}

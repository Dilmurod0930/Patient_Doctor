import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:med/Screens/Main/Muolaja/muolaja_page.dart';
import 'package:med/Screens/Main/bloc/main_cubit.dart';
import 'package:med/Screens/Main/bloc/main_state.dart';
import 'package:med/Screens/Main/doctor/doctor_page.dart';
import 'package:med/Screens/Main/home/home_main_page.dart';
import 'package:med/Screens/Main/hosptal/hospital_page.dart';
import 'package:med/core/constants/color_const.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static const List<Widget> _widgetOptions = <Widget>[
    HomeMainpage(),
    MuolajaPage(),
    DoctorPage(),
    HospitlPage()
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, MainState>(
      builder: (context, state) {
        int selectedIndex = context.watch<HomeCubit>().selected;
        if (state is LoadingMain) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else if (state is InitialMain) {
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              unselectedItemColor: Colors.grey ,
              selectedItemColor: ColorConst.blue,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.vaccines),
                  label: 'Treatments',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.medical_services),
                  label: 'Doctors',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.maps_home_work),
                  label: 'Hospitals',
                ),
              ],
              currentIndex: selectedIndex,
              onTap: (index) {
                context.read<HomeCubit>().changePage(index);
              },
            ),
            body: _widgetOptions[selectedIndex],
          );
        } else {
          return const Center(
            child: Text(
              "Internetda xatolik bor ",
              style: TextStyle(fontSize: 22),
            ),
          );
        }
      },
    );
  }
}
